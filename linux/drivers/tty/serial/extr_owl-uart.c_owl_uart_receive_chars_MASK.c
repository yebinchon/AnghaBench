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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; int /*<<< orphan*/  overrun; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int OWL_UART_CTL_TRFS_TX ; 
 int /*<<< orphan*/  OWL_UART_RXDAT ; 
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int OWL_UART_STAT_RFEM ; 
 int OWL_UART_STAT_RXER ; 
 int OWL_UART_STAT_RXST ; 
 char TTY_NORMAL ; 
 char TTY_PARITY ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	u32 stat, val;

	val = FUNC0(port, OWL_UART_CTL);
	val &= ~OWL_UART_CTL_TRFS_TX;
	FUNC1(port, val, OWL_UART_CTL);

	stat = FUNC0(port, OWL_UART_STAT);
	while (!(stat & OWL_UART_STAT_RFEM)) {
		char flag = TTY_NORMAL;

		if (stat & OWL_UART_STAT_RXER)
			port->icount.overrun++;

		if (stat & OWL_UART_STAT_RXST) {
			/* We are not able to distinguish the error type. */
			port->icount.brk++;
			port->icount.frame++;

			stat &= port->read_status_mask;
			if (stat & OWL_UART_STAT_RXST)
				flag = TTY_PARITY;
		} else
			port->icount.rx++;

		val = FUNC0(port, OWL_UART_RXDAT);
		val &= 0xff;

		if ((stat & port->ignore_status_mask) == 0)
			FUNC5(&port->state->port, val, flag);

		stat = FUNC0(port, OWL_UART_STAT);
	}

	FUNC3(&port->lock);
	FUNC4(&port->state->port);
	FUNC2(&port->lock);
}