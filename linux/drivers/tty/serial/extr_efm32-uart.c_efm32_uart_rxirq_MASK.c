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
struct TYPE_4__ {int /*<<< orphan*/  overrun; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct efm32_uart_port {struct uart_port port; } ;
typedef  int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  UARTn_IF ; 
 int /*<<< orphan*/  UARTn_IFC ; 
 int UARTn_IF_RXDATAV ; 
 int UARTn_IF_RXOF ; 
 int FUNC0 (struct efm32_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct efm32_uart_port *efm_port = data;
	u32 irqflag = FUNC0(efm_port, UARTn_IF);
	int handled = IRQ_NONE;
	struct uart_port *port = &efm_port->port;
	struct tty_port *tport = &port->state->port;

	FUNC3(&port->lock);

	if (irqflag & UARTn_IF_RXDATAV) {
		FUNC2(efm_port, UARTn_IF_RXDATAV, UARTn_IFC);
		FUNC1(efm_port);

		handled = IRQ_HANDLED;
	}

	if (irqflag & UARTn_IF_RXOF) {
		FUNC2(efm_port, UARTn_IF_RXOF, UARTn_IFC);
		port->icount.overrun++;
		FUNC6(tport, 0, TTY_OVERRUN);

		handled = IRQ_HANDLED;
	}

	FUNC4(&port->lock);

	FUNC5(tport);

	return handled;
}