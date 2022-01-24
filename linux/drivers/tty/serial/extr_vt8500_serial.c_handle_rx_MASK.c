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
struct TYPE_4__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; } ;
struct uart_port {unsigned int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 unsigned int FER ; 
 unsigned int PER ; 
 int RXOVER ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 scalar_t__ VT8500_RXFIFO ; 
 int /*<<< orphan*/  VT8500_URFIDX ; 
 int /*<<< orphan*/  VT8500_URISR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,unsigned int,char) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int) ; 
 int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;

	/*
	 * Handle overrun
	 */
	if ((FUNC6(port, VT8500_URISR) & RXOVER)) {
		port->icount.overrun++;
		FUNC4(tport, 0, TTY_OVERRUN);
	}

	/* and now the main RX loop */
	while (FUNC6(port, VT8500_URFIDX) & 0x1f00) {
		unsigned int c;
		char flag = TTY_NORMAL;

		c = FUNC0(port->membase + VT8500_RXFIFO) & 0x3ff;

		/* Mask conditions we're ignorning. */
		c &= ~port->read_status_mask;

		if (c & FER) {
			port->icount.frame++;
			flag = TTY_FRAME;
		} else if (c & PER) {
			port->icount.parity++;
			flag = TTY_PARITY;
		}
		port->icount.rx++;

		if (!FUNC5(port, c))
			FUNC4(tport, c, flag);
	}

	FUNC2(&port->lock);
	FUNC3(tport);
	FUNC1(&port->lock);
}