-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 09:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liveserverdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerquestion`
--

CREATE TABLE `answerquestion` (
  `id` int(100) NOT NULL,
  `questionid` int(10) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `byuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answerquestion`
--

INSERT INTO `answerquestion` (`id`, `questionid`, `answer`, `byuser`) VALUES
(2, 8, 'asdas asda sd asd asd as das', 'Usman'),
(10, 8, 'yse dsad asda', 'Usman'),
(11, 9, 'use w3school', 'Usman'),
(12, 10, 'using gmail account you can', 'Usman');

-- --------------------------------------------------------

--
-- Table structure for table `collabration`
--

CREATE TABLE `collabration` (
  `userid` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  `htmldata` mediumtext NOT NULL,
  `cssdata` mediumtext NOT NULL,
  `jsdata` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collabration`
--

INSERT INTO `collabration` (`userid`, `id`, `htmldata`, `cssdata`, `jsdata`) VALUES
(2, 2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `userid` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  `htmldata` mediumtext NOT NULL,
  `cssdata` mediumtext NOT NULL,
  `jsdata` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live`
--

INSERT INTO `live` (`userid`, `id`, `htmldata`, `cssdata`, `jsdata`) VALUES
(1, 29, '                            <h1>Hello</h1>\r\n<p>Here My New pin</p>\r\n                          ', '                                                            body{\r\n                                    background-color:yellow\r\n                                }\r\n                                h1{\r\n                                    text-align:center;\r\n                                }\r\n                  \r\np {\r\ntext-align:center;\r\n}\r\n                  ', '                            console.log(new Date());\r\n          \r\n          $(\'h1\').css({color:\'red\'});  //test jquery toggle\r\n                          '),
(0, 30, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n', 'body{\r\n  background-color:blue\r\n}\r\nh1{\r\n  text-align:center;\r\n}\r\n', 'alert()'),
(0, 31, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n', '                                body{\r\n                                    background-color:blue\r\n                                }\r\n                                h1{\r\n                                    text-align:center;\r\n                                }\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n      var icon = msg.appendChild(document.createElement(\"span\"));\r\n      icon.innerHTML = \"!!\";\r\n      icon.className = \"lint-error-icon\";\r\n      msg.appendChild(document.createTextNode(err.reason));\r\n      msg.className = \"lint-error\";\r\n      widgets.push(editor.addLineWidget(err.line - 1, msg, {coverGutter: false, noHScroll: true}));\r\n    }\r\n  });\r\n  var info = editor.getScrollInfo();\r\n  var after = editor.charCoords({line: editor.getCursor().line + 1, ch: 0}, \"local\").top;\r\n  if (info.top + info.clientHeight < after)\r\n    editor.scrollTo(null, after - info.clientHeight + 3);\r\n}'),
(0, 32, '<div class=\"wavy\">\r\n  <span style=\"--i:1;\">L</span>\r\n  <span style=\"--i:2;\">o</span>\r\n  <span style=\"--i:3;\">a</span>\r\n  <span style=\"--i:4;\">d</span>\r\n  <span style=\"--i:5;\">i</span>\r\n  <span style=\"--i:6;\">n</span>\r\n  <span style=\"--i:7;\">g</span>\r\n  <span style=\"--i:8;\">.</span>\r\n  <span style=\"--i:9;\">.</span>\r\n  <span style=\"--i:10;\">.</span>\r\n</div>  ', '* {\r\n  margin: 0;\r\n  padding: 0;\r\n  box-sizing: border-box;\r\n  font-family: consolas;\r\n}\r\nbody {\r\n  display: flex;\r\n  justify-content: center;\r\n  align-items: center;\r\n  min-height: 100vh;\r\n  background: #000;\r\n}\r\n.wavy {\r\n  position: relative;\r\n  -webkit-box-reflect: below -12px linear-gradient(transparent, rgba(0, 0, 0, 0.2));\r\n}\r\n.wavy span {\r\n  position: relative;\r\n  display: inline-block;\r\n  color: #fff;\r\n  font-size: 2em;\r\n  text-transform: uppercase;\r\n  animation: animate 1.5s ease-in-out infinite;\r\n  animation-delay: calc(.1s * var(--i))\r\n}\r\n@keyframes animate {\r\n  0%, 100% {\r\n    transform: translateY(0px);\r\n  }\r\n  20% {\r\n    transform: translateY(-20px);\r\n  }\r\n  40% {\r\n    transform: translateY(0px);\r\n  }\r\n}', ''),
(0, 33, '<div class=\"container\">\r\n  <span data-title=\"HelloWorld!\" class=\"text\">\r\n    HelloWorld!\r\n  </span>\r\n</div>', 'body {\r\n  @import url(\"https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap\");\r\n  margin: 0;\r\n  padding: 0;\r\n  overflow: hidden;\r\n  font-family: \'Fjalla One\', sans-serif;\r\n}\r\n\r\n.container {\r\n  margin: 0 auto;\r\n  height: 100vh;\r\n  display: flex;\r\n  align-items: center;\r\n  justify-content: center;\r\n  background-color: #d1dae3;\r\n}\r\n.container .text {\r\n  color: transparent;\r\n  font-size: 10vw;\r\n  display: inline-block;\r\n  border-radius: 3px;\r\n  background-color: #1d3557;\r\n  position: relative;\r\n  -webkit-background-clip: text;\r\n  background-clip: text;\r\n}\r\n.container .text:before {\r\n  content: attr(data-title);\r\n  background: linear-gradient(90deg, #f58915 0%, #fd1d1d 51%, #1d3557 100%);\r\n  position: absolute;\r\n  top: 0;\r\n  right: 0;\r\n  bottom: 0;\r\n  left: 0;\r\n  width: 0;\r\n  background-clip: text;\r\n  -webkit-background-clip: text;\r\n  transition: all 1s ease-in-out;\r\n  animation: text-animation 3s infinite;\r\n}\r\n\r\n@keyframes text-animation {\r\n  0% {\r\n    width: 0;\r\n  }\r\n  50% {\r\n    width: 100%;\r\n  }\r\n  100% {\r\n    width: 0;\r\n  }\r\n}\r\n', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(0, 34, '<div class=\"content\">\r\n  <h2 class=\"text_shadows\">hey</h2>\r\n</div>', '*,\r\n*::before,\r\n*::after {\r\n  box-sizing: border-box;\r\n}\r\n\r\n:root {\r\n  --color-primary: #f6aca2;\r\n  --color-secondary: #f49b90;\r\n  --color-tertiary: #f28b7d;\r\n  --color-quaternary: #f07a6a;\r\n  --color-quinary: #ee6352;\r\n  /*\r\n  --color-primary: #5192ED;\r\n  --color-secondary: #69A1F0;\r\n  --color-tertiary: #7EAEF2;\r\n  --color-quaternary: #90BAF5;\r\n  --color-quinary: #A2C4F5;\r\n  */\r\n}\r\n\r\nbody {\r\n  min-height: 100vh;\r\n  font-family: canada-type-gibson, sans-serif;\r\n  font-weight: 300;\r\n  font-size: 1.25rem;\r\n  display: -webkit-box;\r\n  display: flex;\r\n  -webkit-box-orient: vertical;\r\n  -webkit-box-direction: normal;\r\n          flex-direction: column;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n  overflow: hidden;\r\n  background-color: #000;\r\n}\r\n\r\n.content {\r\n  display: -webkit-box;\r\n  display: flex;\r\n  align-content: center;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n}\r\n\r\n.text_shadows {\r\n  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  font-family: bungee, sans-serif;\r\n  font-weight: 400;\r\n  text-transform: uppercase;\r\n  font-size: calc(2rem + 5vw);\r\n  text-align: center;\r\n  margin: 0;\r\n  color: var(--color-primary);\r\n  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n  letter-spacing: 0.4rem;\r\n}\r\n\r\n@-webkit-keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n\r\n@keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n@-webkit-keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n@keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n', ''),
(0, 35, '<a>\r\nasdsa\r\n</a>', 'body{\r\nbackground-color:blue\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(1, 36, '                            <div class=\"container\">\r\n  <span data-title=\"HelloWorld!\" class=\"text\">\r\n    HelloWorld!\r\n  </span>\r\n</div>\r\n                          ', '                            body {\r\n  @import url(\"https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap\");\r\n  margin: 0;\r\n  padding: 0;\r\n  overflow: hidden;\r\n  font-family: \'Fjalla One\', sans-serif;\r\n}\r\n\r\n.container {\r\n  margin: 0 auto;\r\n  height: 100vh;\r\n  display: flex;\r\n  align-items: center;\r\n  justify-content: center;\r\n  background-color: #d1dae3;\r\n}\r\n.container .text {\r\n  color: transparent;\r\n  font-size: 10vw;\r\n  display: inline-block;\r\n  border-radius: 3px;\r\n  background-color: #1d3557;\r\n  position: relative;\r\n  -webkit-background-clip: text;\r\n  background-clip: text;\r\n}\r\n.container .text:before {\r\n  content: attr(data-title);\r\n  background: linear-gradient(90deg, #f58915 0%, #fd1d1d 51%, #1d3557 100%);\r\n  position: absolute;\r\n  top: 0;\r\n  right: 0;\r\n  bottom: 0;\r\n  left: 0;\r\n  width: 0;\r\n  background-clip: text;\r\n  -webkit-background-clip: text;\r\n  transition: all 1s ease-in-out;\r\n  animation: text-animation 3s infinite;\r\n}\r\n\r\n@keyframes text-animation {\r\n  0% {\r\n    width: 0;\r\n  }\r\n  50% {\r\n    width: 100%;\r\n  }\r\n  100% {\r\n    width: 0;\r\n  }\r\n}\r\n\r\n                  ', '                            var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}\r\n                          '),
(1, 37, '                              <div class=\"wavy\">\r\n  <span style=\"--i:1;\">L</span>\r\n  <span style=\"--i:2;\">o</span>\r\n  <span style=\"--i:3;\">a</span>\r\n  <span style=\"--i:4;\">d</span>\r\n  <span style=\"--i:5;\">i</span>\r\n  <span style=\"--i:6;\">n</span>\r\n  <span style=\"--i:7;\">g</span>\r\n  <span style=\"--i:8;\">.</span>\r\n  <span style=\"--i:9;\">.</span>\r\n  <span style=\"--i:10;\">.</span>\r\n</div>  \r\n                    ', ' * {\r\n  margin: 0;\r\n  padding: 0;\r\n  box-sizing: border-box;\r\n  font-family: consolas;\r\n}\r\nbody {\r\n  display: flex;\r\n  justify-content: center;\r\n  align-items: center;\r\n  min-height: 100vh;\r\n  background: #000;\r\n}\r\n.wavy {\r\n  position: relative;\r\n  -webkit-box-reflect: below -12px linear-gradient(transparent, rgba(0, 0, 0, 0.2));\r\n}\r\n.wavy span {\r\n  position: relative;\r\n  display: inline-block;\r\n  color: #fff;\r\n  font-size: 2em;\r\n  text-transform: uppercase;\r\n  animation: animate 1.5s ease-in-out infinite;\r\n  animation-delay: calc(.1s * var(--i))\r\n}\r\n@keyframes animate {\r\n  0%, 100% {\r\n    transform: translateY(0px);\r\n  }\r\n  20% {\r\n    transform: translateY(-20px);\r\n  }\r\n  40% {\r\n    transform: translateY(0px);\r\n  }\r\n}', ' '),
(1, 38, '                              <div class=\"content\">\r\n  <h2 class=\"text_shadows\">hey</h2>\r\n</div>\r\n                    ', ' *,\r\n*::before,\r\n*::after {\r\n  box-sizing: border-box;\r\n}\r\n\r\n:root {\r\n  --color-primary: #f6aca2;\r\n  --color-secondary: #f49b90;\r\n  --color-tertiary: #f28b7d;\r\n  --color-quaternary: #f07a6a;\r\n  --color-quinary: #ee6352;\r\n  /*\r\n  --color-primary: #5192ED;\r\n  --color-secondary: #69A1F0;\r\n  --color-tertiary: #7EAEF2;\r\n  --color-quaternary: #90BAF5;\r\n  --color-quinary: #A2C4F5;\r\n  */\r\n}\r\n\r\nbody {\r\n  min-height: 100vh;\r\n  font-family: canada-type-gibson, sans-serif;\r\n  font-weight: 300;\r\n  font-size: 1.25rem;\r\n  display: -webkit-box;\r\n  display: flex;\r\n  -webkit-box-orient: vertical;\r\n  -webkit-box-direction: normal;\r\n          flex-direction: column;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n  overflow: hidden;\r\n  background-color: #000;\r\n}\r\n\r\n.content {\r\n  display: -webkit-box;\r\n  display: flex;\r\n  align-content: center;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n}\r\n\r\n.text_shadows {\r\n  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  font-family: bungee, sans-serif;\r\n  font-weight: 400;\r\n  text-transform: uppercase;\r\n  font-size: calc(2rem + 5vw);\r\n  text-align: center;\r\n  margin: 0;\r\n  color: var(--color-primary);\r\n  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n  letter-spacing: 0.4rem;\r\n}\r\n\r\n@-webkit-keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n\r\n@keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n@-webkit-keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n@keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n', ' '),
(0, 39, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n                    ', 'body{\r\nbackground-color:blue\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(1, 40, '                                                          <h1>Hello</h1>\r\n<p>Here My New pin</p>\r\n                          \r\n                    ', '                                                             body{\r\n                                    background-color:yellow\r\n                                }\r\n                                h1{\r\n                                    text-align:center;\r\n                                }\r\n                  \r\np {\r\ntext-align:center;\r\n}\r\n                  ', '                             console.log(new Date());\r\n          \r\n          $(\'h1\').css({color:\'red\'});  //test jquery toggle\r\n                          '),
(1, 41, '                              <b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n\r\n                    ', ' body{\r\n  background-color:blue\r\n}\r\nh1{\r\n  text-align:center;\r\n}\r\n', ' alert()'),
(50, 42, '                              <div class=\"content\">\r\n  <h2 class=\"text_shadows\">hey</h2>\r\n</div>\r\n                    ', ' *,\r\n*::before,\r\n*::after {\r\n  box-sizing: border-box;\r\n}\r\n\r\n:root {\r\n  --color-primary: #f6aca2;\r\n  --color-secondary: #f49b90;\r\n  --color-tertiary: #f28b7d;\r\n  --color-quaternary: #f07a6a;\r\n  --color-quinary: #ee6352;\r\n  /*\r\n  --color-primary: #5192ED;\r\n  --color-secondary: #69A1F0;\r\n  --color-tertiary: #7EAEF2;\r\n  --color-quaternary: #90BAF5;\r\n  --color-quinary: #A2C4F5;\r\n  */\r\n}\r\n\r\nbody {\r\n  min-height: 100vh;\r\n  font-family: canada-type-gibson, sans-serif;\r\n  font-weight: 300;\r\n  font-size: 1.25rem;\r\n  display: -webkit-box;\r\n  display: flex;\r\n  -webkit-box-orient: vertical;\r\n  -webkit-box-direction: normal;\r\n          flex-direction: column;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n  overflow: hidden;\r\n  background-color: #000;\r\n}\r\n\r\n.content {\r\n  display: -webkit-box;\r\n  display: flex;\r\n  align-content: center;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n}\r\n\r\n.text_shadows {\r\n  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  font-family: bungee, sans-serif;\r\n  font-weight: 400;\r\n  text-transform: uppercase;\r\n  font-size: calc(2rem + 5vw);\r\n  text-align: center;\r\n  margin: 0;\r\n  color: var(--color-primary);\r\n  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n  letter-spacing: 0.4rem;\r\n}\r\n\r\n@-webkit-keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n\r\n@keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n@-webkit-keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n@keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n', ' '),
(0, 43, '<b>Hello how are you today?</b>\r\n<a ERROR \r\n   <a/>\r\n\r\n<h1>hello</h1>\r\n                    ', 'body{\r\nbackground-color:orange\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(0, 44, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n                    ', 'body{\r\nbackground-color:orange\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n       \r\n', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(0, 45, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n                    ', 'body{\r\nbackground-color:orange\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(50, 46, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>Hello</h1>\r\n                    ', 'body{\r\nbackground-color:orange\r\n}\r\nh1{\r\ntext-align:center;\r\n  font-size:140px;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(50, 47, '                              <div class=\"content\">\r\n  <h2 class=\"text_shadows\">hey</h2>\r\n</div>\r\n                    ', ' *,\r\n*::before,\r\n*::after {\r\n  box-sizing: border-box;\r\n}\r\n\r\n:root {\r\n  --color-primary: #f6aca2;\r\n  --color-secondary: #f49b90;\r\n  --color-tertiary: #f28b7d;\r\n  --color-quaternary: #f07a6a;\r\n  --color-quinary: #ee6352;\r\n  /*\r\n  --color-primary: #5192ED;\r\n  --color-secondary: #69A1F0;\r\n  --color-tertiary: #7EAEF2;\r\n  --color-quaternary: #90BAF5;\r\n  --color-quinary: #A2C4F5;\r\n  */\r\n}\r\n\r\nbody {\r\n  min-height: 100vh;\r\n  font-family: canada-type-gibson, sans-serif;\r\n  font-weight: 300;\r\n  font-size: 1.25rem;\r\n  display: -webkit-box;\r\n  display: flex;\r\n  -webkit-box-orient: vertical;\r\n  -webkit-box-direction: normal;\r\n          flex-direction: column;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n  overflow: hidden;\r\n  background-color: #000;\r\n}\r\n\r\n.content {\r\n  display: -webkit-box;\r\n  display: flex;\r\n  align-content: center;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n}\r\n\r\n.text_shadows {\r\n  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  font-family: bungee, sans-serif;\r\n  font-weight: 400;\r\n  text-transform: uppercase;\r\n  font-size: calc(2rem + 5vw);\r\n  text-align: center;\r\n  margin: 0;\r\n  color: var(--color-primary);\r\n  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n  letter-spacing: 0.4rem;\r\n}\r\n\r\n@-webkit-keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n\r\n@keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n@-webkit-keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n@keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n', ' '),
(50, 48, '                                                            <div class=\"content\">\r\n  <h2 class=\"text_shadows\">hey</h2>\r\n</div>\r\n                    \r\n                    ', '  *,\r\n*::before,\r\n*::after {\r\n  box-sizing: border-box;\r\n}\r\n\r\n:root {\r\n  --color-primary: #f6aca2;\r\n  --color-secondary: #f49b90;\r\n  --color-tertiary: #f28b7d;\r\n  --color-quaternary: #f07a6a;\r\n  --color-quinary: #ee6352;\r\n  /*\r\n  --color-primary: #5192ED;\r\n  --color-secondary: #69A1F0;\r\n  --color-tertiary: #7EAEF2;\r\n  --color-quaternary: #90BAF5;\r\n  --color-quinary: #A2C4F5;\r\n  */\r\n}\r\n\r\nbody {\r\n  min-height: 100vh;\r\n  font-family: canada-type-gibson, sans-serif;\r\n  font-weight: 300;\r\n  font-size: 1.25rem;\r\n  display: -webkit-box;\r\n  display: flex;\r\n  -webkit-box-orient: vertical;\r\n  -webkit-box-direction: normal;\r\n          flex-direction: column;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n  overflow: hidden;\r\n  background-color: #000;\r\n}\r\n\r\n.content {\r\n  display: -webkit-box;\r\n  display: flex;\r\n  align-content: center;\r\n  -webkit-box-pack: center;\r\n          justify-content: center;\r\n}\r\n\r\n.text_shadows {\r\n  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  font-family: bungee, sans-serif;\r\n  font-weight: 400;\r\n  text-transform: uppercase;\r\n  font-size: calc(2rem + 5vw);\r\n  text-align: center;\r\n  margin: 0;\r\n  color: var(--color-primary);\r\n  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;\r\n  letter-spacing: 0.4rem;\r\n}\r\n\r\n@-webkit-keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n\r\n@keyframes shadows {\r\n  0% {\r\n    text-shadow: none;\r\n  }\r\n  10% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  20% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  30% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  40% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  50% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  60% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);\r\n  }\r\n  70% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);\r\n  }\r\n  80% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);\r\n  }\r\n  90% {\r\n    text-shadow: 3px 3px 0 var(--color-secondary);\r\n  }\r\n  100% {\r\n    text-shadow: none;\r\n  }\r\n}\r\n@-webkit-keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n@keyframes move {\r\n  0% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n  40% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  50% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  60% {\r\n    -webkit-transform: translate(-12px, -12px);\r\n            transform: translate(-12px, -12px);\r\n  }\r\n  100% {\r\n    -webkit-transform: translate(0px, 0px);\r\n            transform: translate(0px, 0px);\r\n  }\r\n}\r\n', '  '),
(50, 49, '                              <div class=\"container\">\r\n  <span data-title=\"HelloWorld!\" class=\"text\">\r\n    HelloWorld!\r\n  </span>\r\n</div>\r\n                    ', ' body {\r\n  @import url(\"https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap\");\r\n  margin: 0;\r\n  padding: 0;\r\n  overflow: hidden;\r\n  font-family: \'Fjalla One\', sans-serif;\r\n}\r\n\r\n.container {\r\n  margin: 0 auto;\r\n  height: 100vh;\r\n  display: flex;\r\n  align-items: center;\r\n  justify-content: center;\r\n  background-color: #d1dae3;\r\n}\r\n.container .text {\r\n  color: transparent;\r\n  font-size: 10vw;\r\n  display: inline-block;\r\n  border-radius: 3px;\r\n  background-color: #1d3557;\r\n  position: relative;\r\n  -webkit-background-clip: text;\r\n  background-clip: text;\r\n}\r\n.container .text:before {\r\n  content: attr(data-title);\r\n  background: linear-gradient(90deg, #f58915 0%, #fd1d1d 51%, #1d3557 100%);\r\n  position: absolute;\r\n  top: 0;\r\n  right: 0;\r\n  bottom: 0;\r\n  left: 0;\r\n  width: 0;\r\n  background-clip: text;\r\n  -webkit-background-clip: text;\r\n  transition: all 1s ease-in-out;\r\n  animation: text-animation 3s infinite;\r\n}\r\n\r\n@keyframes text-animation {\r\n  0% {\r\n    width: 0;\r\n  }\r\n  50% {\r\n    width: 100%;\r\n  }\r\n  100% {\r\n    width: 0;\r\n  }\r\n}\r\n', ' var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(1, 50, '                              <b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n\r\n                    ', '                                 body{\r\n                                    background-color:blue\r\n                                }\r\n                                h1{\r\n                                    text-align:center;\r\n                                }\r\n                            ', ' var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n      var icon = msg.appendChild(document.createElement(\"span\"));\r\n      icon.innerHTML = \"!!\";\r\n      icon.className = \"lint-error-icon\";\r\n      msg.appendChild(document.createTextNode(err.reason));\r\n      msg.className = \"lint-error\";\r\n      widgets.push(editor.addLineWidget(err.line - 1, msg, {coverGutter: false, noHScroll: true}));\r\n    }\r\n  });\r\n  var info = editor.getScrollInfo();\r\n  var after = editor.charCoords({line: editor.getCursor().line + 1, ch: 0}, \"local\").top;\r\n  if (info.top + info.clientHeight < after)\r\n    editor.scrollTo(null, after - info.clientHeight + 3);\r\n}'),
(1, 51, '<b>Hello how are you today?</b>\r\n<a ERROR/<a/>\r\n\r\n<h1>hello</h1>\r\n                    ', 'body{\r\nbackground-color:yellow\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', 'var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}'),
(1, 52, '                              <a>\r\nasdsa\r\n</a>\r\n                    ', ' body{\r\nbackground-color:blue\r\n}\r\nh1{\r\ntext-align:center;\r\n}\r\n                            ', ' var widgets = []\r\nfunction updateHints() {\r\n  editor.operation(function(){\r\n    for (var i = 0; i < widgets.length.; ++i)\r\n      editor.removeLineWidget(widgets[i]);\r\n    widgets.length = 0;\r\n\r\n    JSHINT(editor.getValue());\r\n    for (var i = 0; i < JSHINT.errors.length; ++i) {\r\n      var err = JSHINT.errors[i];\r\n      if (!err) continue;\r\n      var msg = document.createElement(\"div\");\r\n   \r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `email`) VALUES
(1, 'Usman', '123456', 'usman@gmail.com'),
(36, 'umerlogin', '123456', 'umer@gmail.com'),
(37, 'usman123', '123456', 'usman123@gmail.com'),
(38, 'usman11', '123456', 'us@gmail.com'),
(39, 'usmangmail', '12345644', 'aa@gmail.com'),
(40, '356sdasdas', '123456', 'ada@gmail.com'),
(41, '46545dsdas', 'jknkj5455', 'usma@gmail.com'),
(42, '54asdasd', '123456', 'usmnaper@gmail.com'),
(43, 'usman111', '1234561', 'us232131@gmail.com'),
(44, 'usman4', '12345654', 'ssad@gmail.com'),
(45, '54654assd', '545sad', '5464@gmail.com'),
(46, '544sadas', '123456', 'as@gmail.com'),
(47, 'usman444', '123456', 'usmanpervaiz@gmail.c'),
(48, 'usmanqq', '123456', 'usq@gmail.com'),
(49, 'usmanaa', '123456', 'su2@gmail.com'),
(50, 'ali00', '123456', 'ali@gmail.com'),
(51, 'us22222', '1234567897', 'usee@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderid` int(5) NOT NULL,
  `tailorid` int(5) NOT NULL,
  `tailorname` varchar(20) NOT NULL,
  `userid` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `nap` varchar(500) NOT NULL,
  `orderdate` varchar(50) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `service` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  `orderStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `tailorid`, `tailorname`, `userid`, `username`, `address`, `nap`, `orderdate`, `enddate`, `service`, `message`, `orderStatus`) VALUES
(281, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Saturday, December 21st, 2019, 8:18:20 PM', '2019-12-25', 'home', 'dsfdsfds', 'received'),
(282, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', 'sadasdasd sad sadas', 'Saturday, December 21st, 2019, 9:27:11 PM', '2019-12-31', 'home', '2 suit balck with  banner', 'received'),
(284, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 12:18:03 AM', '2019-12-26', 'Shop', 'fccdsfsf', 'received'),
(285, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-31', 'home', 'jnkjhkjhnkhkj', 'received'),
(286, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-27', 'home', 'sadsad', 'received'),
(287, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-26', 'home', 'sadsa', 'received'),
(288, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-24', 'home', 'asdsad', 'received'),
(289, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-23', 'home', 'sadad', 'received'),
(290, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-26', 'home', 'ssssssssssssssssssssssss', 'cancel'),
(292, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 1:24:32 AM', '2019-12-24', 'Shop', 'sdasds', 'cancel'),
(293, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 2:26:12 AM', '2019-12-23', 'home', 'asdasdsadsa', 'cancel'),
(294, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 2:27:47 AM', '2019-12-31', 'home', 'dsadsa', 'completed'),
(297, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 2:37:56 AM', '2019-12-24', 'home', 'lklkl;k;l', 'received'),
(301, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 4:41:39 PM', '2019-12-31', 'home', 'noorr ssherrerererererer', 'received'),
(302, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 5:47:55 PM', '2019-12-31', 'Shop', 'qerdwedasdd', 'received'),
(303, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 6:47:15 PM', '2019-12-30', 'home', 'sadsada', 'confirm'),
(304, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 7:56:18 PM', '2019-12-26', 'Shop', 'dfdsfsdf', 'confirm'),
(305, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 7:56:18 PM', '2019-12-26', 'home', 'asdadsada', 'confirm'),
(306, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 7:56:18 PM', '2019-12-26', 'home', 'asdadsada', 'confirm'),
(307, 19, 'alis', 31, 'Mudasir Sardar', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, December 22nd, 2019, 7:56:18 PM', '2019-12-30', 'home', 'wqereweqwq', 'confirm'),
(309, 19, 'alis', 31, 'Mudasir Sardar', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', '48100', 'Sunday, December 22nd, 2019, 8:12:51 PM', '2019-12-25', 'home', 'drtgfdgfdgfdgdg', 'confirm'),
(310, 19, 'alis', 31, 'Mudasir Sardar', 'ksahjkdjsakl daskdbnjas das djashdkjhaj', 'kljakldj asldjlaskjl', 'Sunday, December 22nd, 2019, 8:12:51 PM', '2019-12-31', 'home', 'ddfdsfdsfds', 'cancle'),
(313, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Monday, December 23rd, 2019, 10:18:34 AM', '2019-12-24', 'home', 'kjhkjhkjhjkh', 'completed'),
(315, 11, 'Usman', 16, 'Tayyab', 'xyz adddress 888', 'xyz', 'Monday, December 23rd, 2019, 10:20:30 AM', '2019-12-31', 'home', 'here is message', 'received'),
(316, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Wednesday, December 25th, 2019, 4:06:16 PM', '2019-12-26', 'home', 'here we  define the message of the user ', 'cancel'),
(318, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Thursday, March 5th, 2020, 4:22:58 PM', '2020-03-27', 'home', 'hhhhhhhhhhhhhhhhhhhhh', 'received'),
(320, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, March 15th, 2020, 11:12:09 AM', '2020-03-15', 'Shop', 'shop on delivery', 'cancel'),
(322, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Sunday, March 15th, 2020, 11:56:52 AM', '275760-05-04', 'home', 'asdknasd asojfaljdl kasjdlkajdlkajslkdjaslkjdsakljda lk;l j4\r\n45\r\n45\r\n5456454545645\r\n5\r\n54\r\n5\r\n5', 'cancel'),
(324, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Mon Mar 16 2020 09:42:54', '2020-12-31', 'home', 'Hello yhid ', 'wfa'),
(325, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Mon Mar 16 2020 09:42:54', '2020-12-31', 'home', 'sahdhjashdkadkhasjkdhasjkdasjkdhnkjasdhjkashndjkhaskjdhaskjdh;klas hfduash flkjhsdkljfhsakjfh kjsadhfkjlsdahf klsdhfkjlhsaduifh safhkjsdahgfu ihsad f g sjkgdfksag fksagdkuf  gsjagfasj gflakhsghfkgasghfjhasgfjkasgfkhdsgakfjsgfhgadsjkfhgsk fa hdsg fjkasghf khsagfkhgsakhg fsgdakfjagshkfgaskhgfhsaghfgasgfsaj', 'wfa'),
(326, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Mon Mar 16 2020 14:06:12', '2020-03-19', 'home', 'sdsadsad', 'wfa'),
(329, 11, 'Usman', 16, 'Tayyab', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '48100', 'Wed May 27 2020 12:48:40', '2020-05-28', 'Shop', '54564654', 'received'),
(330, 11, 'Usman', 16, 'Tayyab', 'here my new order', 'here my new order', 'Sat May 30 2020 23:15:32', '2020-05-30', 'home', 'here my new order', 'cancel');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `byuser` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `byuser`) VALUES
(2, 'adsadasd', 'Usman'),
(8, 'How we draw a canvas', 'Usman'),
(9, 'how to create function in javascript', 'Usman'),
(10, 'how we join the qalam', 'Usman');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `full_name` varchar(55) NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `email` varchar(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `perfect_money_acc` varchar(90) NOT NULL,
  `bitcoin_acc` varchar(90) NOT NULL,
  `litecoin_acc` varchar(90) NOT NULL,
  `dogecoin_acc` varchar(90) NOT NULL,
  `ethereum_acc` varchar(90) NOT NULL,
  `bitcoin_cash_acc` varchar(90) NOT NULL,
  `dash_acc` varchar(90) NOT NULL,
  `joindate` varchar(100) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `full_name`, `user_name`, `password`, `email`, `question`, `answer`, `perfect_money_acc`, `bitcoin_acc`, `litecoin_acc`, `dogecoin_acc`, `ethereum_acc`, `bitcoin_cash_acc`, `dash_acc`, `joindate`, `status`) VALUES
(16, 'WORLD TREND', 'usmanabcsad', 'Kuw5XevsUw', 'usmanpervaiz724@gmail.com', 'No Question', 'NoOne', '', 'Vpo Nakkah kahut tehsile talagang distic chakwal punjab pakistan', '', '', '', '', '', 'June-19-2020', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answerquestion`
--
ALTER TABLE `answerquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collabration`
--
ALTER TABLE `collabration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live`
--
ALTER TABLE `live`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answerquestion`
--
ALTER TABLE `answerquestion`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `collabration`
--
ALTER TABLE `collabration`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
