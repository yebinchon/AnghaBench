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
struct uart_port {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; } ;
struct ktermios {int c_iflag; int c_cflag; } ;

/* Variables and functions */
 int CBAUD ; 
 int CREAD ; 
 int CS8 ; 
 int IGNPAR ; 
 int INPCK ; 
 int STAT_BRK_ERR ; 
 int STAT_FRM_ERR ; 
 int STAT_OVR_ERR ; 
 int STAT_PAR_ERR ; 
 int FUNC0 (struct uart_port*) ; 
 int STAT_TX_FIFO_FUL ; 
 int FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port,
				   struct ktermios *termios,
				   struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud;

	FUNC3(&port->lock, flags);

	port->read_status_mask = FUNC0(port) | STAT_OVR_ERR |
		FUNC1(port) | STAT_TX_FIFO_FUL;

	if (termios->c_iflag & INPCK)
		port->read_status_mask |= STAT_FRM_ERR | STAT_PAR_ERR;

	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |=
			STAT_FRM_ERR | STAT_PAR_ERR | STAT_OVR_ERR;

	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= FUNC0(port) | STAT_BRK_ERR;

	/*
	 * Maximum achievable frequency with simple baudrate divisor is 230400.
	 * Since the error per bit frame would be of more than 15%, achieving
	 * higher frequencies would require to implement the fractional divisor
	 * feature.
	 */
	baud = FUNC6(port, termios, old, 0, 230400);
	if (FUNC2(port, baud)) {
		/* No clock available, baudrate cannot be changed */
		if (old)
			baud = FUNC6(port, old, NULL, 0, 230400);
	} else {
		FUNC5(termios, baud, baud);
		FUNC7(port, termios->c_cflag, baud);
	}

	/* Only the following flag changes are supported */
	if (old) {
		termios->c_iflag &= INPCK | IGNPAR;
		termios->c_iflag |= old->c_iflag & ~(INPCK | IGNPAR);
		termios->c_cflag &= CREAD | CBAUD;
		termios->c_cflag |= old->c_cflag & ~(CREAD | CBAUD);
		termios->c_cflag |= CS8;
	}

	FUNC4(&port->lock, flags);
}