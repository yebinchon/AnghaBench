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
struct uart_port {scalar_t__ type; } ;
struct sci_port {scalar_t__* irqs; int /*<<< orphan*/  chan_tx; int /*<<< orphan*/  chan_rx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PORT_SCI ; 
 size_t SCIx_BRI_IRQ ; 
 size_t SCIx_ERI_IRQ ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 unsigned short FUNC10 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC11 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *ptr)
{
	struct uart_port *port = ptr;
	struct sci_port *s = FUNC11(port);

	if (s->irqs[SCIx_ERI_IRQ] == s->irqs[SCIx_BRI_IRQ]) {
		/* Break and Error interrupts are muxed */
		unsigned short ssr_status = FUNC10(port, SCxSR);

		/* Break Interrupt */
		if (ssr_status & FUNC0(port))
			FUNC4(irq, ptr);

		/* Break only? */
		if (!(ssr_status & FUNC1(port)))
			return IRQ_HANDLED;
	}

	/* Handle errors */
	if (port->type == PORT_SCI) {
		if (FUNC6(port)) {
			/* discard character in rx buffer */
			FUNC10(port, SCxSR);
			FUNC5(port, FUNC3(port));
		}
	} else {
		FUNC7(port);
		if (!s->chan_rx)
			FUNC8(port);
	}

	FUNC5(port, FUNC2(port));

	/* Kick the transmission */
	if (!s->chan_tx)
		FUNC9(irq, ptr);

	return IRQ_HANDLED;
}