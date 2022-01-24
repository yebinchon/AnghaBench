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
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  overrun; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  UARTn_INT ; 
 int UARTn_INT_RX_OVERRUN ; 
 int UARTn_INT_TX_OVERRUN ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	irqreturn_t handled = IRQ_NONE;
	struct uart_port *port = data;
	u8 irqflag = FUNC0(port, UARTn_INT);

	FUNC2(&port->lock);

	if (irqflag & UARTn_INT_RX_OVERRUN) {
		struct tty_port *tport = &port->state->port;

		FUNC1(port, UARTn_INT_RX_OVERRUN, UARTn_INT);
		port->icount.overrun++;
		FUNC5(tport, 0, TTY_OVERRUN);
		FUNC4(tport);
		handled = IRQ_HANDLED;
	}

	/*
	 * It's never been seen in practice and it never *should* happen since
	 * we check if there is enough room in TX buffer before sending data.
	 * So we keep this check in case something suspicious has happened.
	 */
	if (irqflag & UARTn_INT_TX_OVERRUN) {
		FUNC1(port, UARTn_INT_TX_OVERRUN, UARTn_INT);
		handled = IRQ_HANDLED;
	}

	FUNC3(&port->lock);

	return handled;
}