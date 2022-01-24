#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device_node {int dummy; } ;
struct console {int cflag; } ;

/* Variables and functions */
 int B115200 ; 
 int B1200 ; 
 int B150 ; 
 int B19200 ; 
 int B230400 ; 
 int B2400 ; 
 int B300 ; 
 int B38400 ; 
 int B460800 ; 
 int B4800 ; 
 int B57600 ; 
 int B600 ; 
 int B9600 ; 
 int CLOCAL ; 
 int CREAD ; 
 int CS5 ; 
 int CS6 ; 
 int CS7 ; 
 int CS8 ; 
 int CSTOPB ; 
 int HUPCL ; 
 int PARENB ; 
 int PARODD ; 
 char* of_console_options ; 
 struct device_node* FUNC0 (char*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char) ; 

void FUNC6(struct console *con, struct device_node *uart_dp)
{
	const char *mode, *s;
	char mode_prop[] = "ttyX-mode";
	int baud, bits, stop, cflag;
	char parity;

	if (FUNC2(uart_dp, "rsc") ||
	    FUNC2(uart_dp, "rsc-console") ||
	    FUNC2(uart_dp, "rsc-control")) {
		mode = FUNC1(uart_dp,
				       "ssp-console-modes", NULL);
		if (!mode)
			mode = "115200,8,n,1,-";
	} else if (FUNC2(uart_dp, "lom-console")) {
		mode = "9600,8,n,1,-";
	} else {
		struct device_node *dp;
		char c;

		c = 'a';
		if (of_console_options)
			c = *of_console_options;

		mode_prop[3] = c;

		dp = FUNC0("/options");
		mode = FUNC1(dp, mode_prop, NULL);
		if (!mode)
			mode = "9600,8,n,1,-";
		FUNC3(dp);
	}

	cflag = CREAD | HUPCL | CLOCAL;

	s = mode;
	baud = FUNC4(s, NULL, 0);
	s = FUNC5(s, ',');
	bits = FUNC4(++s, NULL, 0);
	s = FUNC5(s, ',');
	parity = *(++s);
	s = FUNC5(s, ',');
	stop = FUNC4(++s, NULL, 0);
	s = FUNC5(s, ',');
	/* XXX handshake is not handled here. */

	switch (baud) {
		case 150: cflag |= B150; break;
		case 300: cflag |= B300; break;
		case 600: cflag |= B600; break;
		case 1200: cflag |= B1200; break;
		case 2400: cflag |= B2400; break;
		case 4800: cflag |= B4800; break;
		case 9600: cflag |= B9600; break;
		case 19200: cflag |= B19200; break;
		case 38400: cflag |= B38400; break;
		case 57600: cflag |= B57600; break;
		case 115200: cflag |= B115200; break;
		case 230400: cflag |= B230400; break;
		case 460800: cflag |= B460800; break;
		default: baud = 9600; cflag |= B9600; break;
	}

	switch (bits) {
		case 5: cflag |= CS5; break;
		case 6: cflag |= CS6; break;
		case 7: cflag |= CS7; break;
		case 8: cflag |= CS8; break;
		default: cflag |= CS8; break;
	}

	switch (parity) {
		case 'o': cflag |= (PARENB | PARODD); break;
		case 'e': cflag |= PARENB; break;
		case 'n': default: break;
	}

	switch (stop) {
		case 2: cflag |= CSTOPB; break;
		case 1: default: break;
	}

	con->cflag = cflag;
}