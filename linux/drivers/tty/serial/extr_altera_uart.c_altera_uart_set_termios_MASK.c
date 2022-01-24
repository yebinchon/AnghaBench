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
struct uart_port {unsigned int uartclk; int /*<<< orphan*/  lock; } ;
struct ktermios {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERA_UART_DIVISOR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC4 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port,
				    struct ktermios *termios,
				    struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud, baudclk;

	baud = FUNC5(port, termios, old, 0, 4000000);
	baudclk = port->uartclk / baud;

	if (old)
		FUNC3(termios, old);
	FUNC4(termios, baud, baud);

	FUNC1(&port->lock, flags);
	FUNC6(port, termios->c_cflag, baud);
	FUNC0(port, baudclk, ALTERA_UART_DIVISOR_REG);
	FUNC2(&port->lock, flags);

	/*
	 * FIXME: port->read_status_mask and port->ignore_status_mask
	 * need to be initialized based on termios settings for
	 * INPCK, IGNBRK, IGNPAR, PARMRK, BRKINT
	 */
}