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
 int CREAD ; 
 int IGNPAR ; 
 int INPCK ; 
 int ULITE_STATUS_FRAME ; 
 int ULITE_STATUS_OVERRUN ; 
 int ULITE_STATUS_PARITY ; 
 int ULITE_STATUS_RXVALID ; 
 int ULITE_STATUS_TXFULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC2 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, struct ktermios *termios,
			      struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud;

	FUNC0(&port->lock, flags);

	port->read_status_mask = ULITE_STATUS_RXVALID | ULITE_STATUS_OVERRUN
		| ULITE_STATUS_TXFULL;

	if (termios->c_iflag & INPCK)
		port->read_status_mask |=
			ULITE_STATUS_PARITY | ULITE_STATUS_FRAME;

	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= ULITE_STATUS_PARITY
			| ULITE_STATUS_FRAME | ULITE_STATUS_OVERRUN;

	/* ignore all characters if CREAD is not set */
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |=
			ULITE_STATUS_RXVALID | ULITE_STATUS_PARITY
			| ULITE_STATUS_FRAME | ULITE_STATUS_OVERRUN;

	/* update timeout */
	baud = FUNC2(port, termios, old, 0, 460800);
	FUNC3(port, termios->c_cflag, baud);

	FUNC1(&port->lock, flags);
}