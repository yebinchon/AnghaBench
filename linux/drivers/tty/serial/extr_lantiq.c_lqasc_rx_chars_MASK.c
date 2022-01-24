#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned int read_status_mask; unsigned int ignore_status_mask; scalar_t__ membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 unsigned int ASCFSTAT_RXFFLMASK ; 
 unsigned int ASCSTATE_ANY ; 
 unsigned int ASCSTATE_FE ; 
 unsigned int ASCSTATE_PE ; 
 unsigned int ASCSTATE_ROE ; 
 int /*<<< orphan*/  ASCWHBSTATE_CLRFE ; 
 int /*<<< orphan*/  ASCWHBSTATE_CLRPE ; 
 int /*<<< orphan*/  ASCWHBSTATE_CLRROE ; 
 scalar_t__ LTQ_ASC_FSTAT ; 
 scalar_t__ LTQ_ASC_RBUF ; 
 scalar_t__ LTQ_ASC_STATE ; 
 scalar_t__ LTQ_ASC_WHBSTATE ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 unsigned int UART_DUMMY_UER_RX ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	unsigned int ch = 0, rsr = 0, fifocnt;

	fifocnt = FUNC0(port->membase + LTQ_ASC_FSTAT) &
		  ASCFSTAT_RXFFLMASK;
	while (fifocnt--) {
		u8 flag = TTY_NORMAL;
		ch = FUNC2(port->membase + LTQ_ASC_RBUF);
		rsr = (FUNC0(port->membase + LTQ_ASC_STATE)
			& ASCSTATE_ANY) | UART_DUMMY_UER_RX;
		FUNC3(tport);
		port->icount.rx++;

		/*
		 * Note that the error handling code is
		 * out of the main execution path
		 */
		if (rsr & ASCSTATE_ANY) {
			if (rsr & ASCSTATE_PE) {
				port->icount.parity++;
				FUNC1(0, ASCWHBSTATE_CLRPE,
					port->membase + LTQ_ASC_WHBSTATE);
			} else if (rsr & ASCSTATE_FE) {
				port->icount.frame++;
				FUNC1(0, ASCWHBSTATE_CLRFE,
					port->membase + LTQ_ASC_WHBSTATE);
			}
			if (rsr & ASCSTATE_ROE) {
				port->icount.overrun++;
				FUNC1(0, ASCWHBSTATE_CLRROE,
					port->membase + LTQ_ASC_WHBSTATE);
			}

			rsr &= port->read_status_mask;

			if (rsr & ASCSTATE_PE)
				flag = TTY_PARITY;
			else if (rsr & ASCSTATE_FE)
				flag = TTY_FRAME;
		}

		if ((rsr & port->ignore_status_mask) == 0)
			FUNC4(tport, ch, flag);

		if (rsr & ASCSTATE_ROE)
			/*
			 * Overrun is special, since it's reported
			 * immediately, and doesn't affect the current
			 * character
			 */
			FUNC4(tport, 0, TTY_OVERRUN);
	}

	if (ch != 0)
		FUNC3(tport);

	return 0;
}