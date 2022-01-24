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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  uartclk; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
 int CS8 ; 
 int CSIZE ; 
 int CSTOPB ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int PARENB ; 
 int /*<<< orphan*/  UARTn_BAUDDIV ; 
 unsigned int UARTn_BAUDDIV_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC8(struct uart_port *port, struct ktermios *termios,
		      struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud, bauddiv;

	termios->c_cflag &= ~(CRTSCTS | CMSPAR);
	termios->c_cflag &= ~CSIZE;
	termios->c_cflag |= CS8;
	termios->c_cflag &= ~PARENB;
	termios->c_cflag &= ~CSTOPB;

	baud = FUNC6(port, termios, old,
			FUNC0(port->uartclk, UARTn_BAUDDIV_MASK),
			FUNC0(port->uartclk, 16));

	bauddiv = FUNC0(port->uartclk, baud);

	FUNC2(&port->lock, flags);

	FUNC7(port, termios->c_cflag, baud);
	FUNC1(port, bauddiv, UARTn_BAUDDIV);

	FUNC3(&port->lock, flags);

	if (FUNC4(termios))
		FUNC5(termios, baud, baud);
}