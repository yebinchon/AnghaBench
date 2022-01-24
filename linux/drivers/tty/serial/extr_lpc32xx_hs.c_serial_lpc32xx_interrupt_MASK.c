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
struct TYPE_4__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  brk; } ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LPC32XX_HSU_BRK_INT ; 
 int LPC32XX_HSU_FE_INT ; 
 int LPC32XX_HSU_RX_OE_INT ; 
 int LPC32XX_HSU_RX_TIMEOUT_INT ; 
 int LPC32XX_HSU_RX_TRIG_INT ; 
 int LPC32XX_HSU_TX_INT ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct tty_port *tport = &port->state->port;
	u32 status;

	FUNC4(&port->lock);

	/* Read UART status and clear latched interrupts */
	status = FUNC3(FUNC0(port->membase));

	if (status & LPC32XX_HSU_BRK_INT) {
		/* Break received */
		FUNC10(LPC32XX_HSU_BRK_INT, FUNC0(port->membase));
		port->icount.brk++;
		FUNC8(port);
	}

	/* Framing error */
	if (status & LPC32XX_HSU_FE_INT)
		FUNC10(LPC32XX_HSU_FE_INT, FUNC0(port->membase));

	if (status & LPC32XX_HSU_RX_OE_INT) {
		/* Receive FIFO overrun */
		FUNC10(LPC32XX_HSU_RX_OE_INT,
		       FUNC0(port->membase));
		port->icount.overrun++;
		FUNC6(tport, 0, TTY_OVERRUN);
		FUNC7(tport);
	}

	/* Data received? */
	if (status & (LPC32XX_HSU_RX_TIMEOUT_INT | LPC32XX_HSU_RX_TRIG_INT))
		FUNC1(port);

	/* Transmit data request? */
	if ((status & LPC32XX_HSU_TX_INT) && (!FUNC9(port))) {
		FUNC10(LPC32XX_HSU_TX_INT, FUNC0(port->membase));
		FUNC2(port);
	}

	FUNC5(&port->lock);

	return IRQ_HANDLED;
}