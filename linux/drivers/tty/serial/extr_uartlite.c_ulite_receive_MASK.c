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
struct TYPE_4__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct uart_port {int ignore_status_mask; int read_status_mask; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int /*<<< orphan*/  ULITE_RX ; 
 int ULITE_STATUS_FRAME ; 
 int ULITE_STATUS_OVERRUN ; 
 int ULITE_STATUS_PARITY ; 
 int ULITE_STATUS_RXVALID ; 
 int /*<<< orphan*/  FUNC0 (struct tty_port*,unsigned char,char) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,struct uart_port*) ; 

__attribute__((used)) static int FUNC2(struct uart_port *port, int stat)
{
	struct tty_port *tport = &port->state->port;
	unsigned char ch = 0;
	char flag = TTY_NORMAL;

	if ((stat & (ULITE_STATUS_RXVALID | ULITE_STATUS_OVERRUN
		     | ULITE_STATUS_FRAME)) == 0)
		return 0;

	/* stats */
	if (stat & ULITE_STATUS_RXVALID) {
		port->icount.rx++;
		ch = FUNC1(ULITE_RX, port);

		if (stat & ULITE_STATUS_PARITY)
			port->icount.parity++;
	}

	if (stat & ULITE_STATUS_OVERRUN)
		port->icount.overrun++;

	if (stat & ULITE_STATUS_FRAME)
		port->icount.frame++;


	/* drop byte with parity error if IGNPAR specificed */
	if (stat & port->ignore_status_mask & ULITE_STATUS_PARITY)
		stat &= ~ULITE_STATUS_RXVALID;

	stat &= port->read_status_mask;

	if (stat & ULITE_STATUS_PARITY)
		flag = TTY_PARITY;


	stat &= ~port->ignore_status_mask;

	if (stat & ULITE_STATUS_RXVALID)
		FUNC0(tport, ch, flag);

	if (stat & ULITE_STATUS_FRAME)
		FUNC0(tport, 0, TTY_FRAME);

	if (stat & ULITE_STATUS_OVERRUN)
		FUNC0(tport, 0, TTY_OVERRUN);

	return 1;
}