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
struct uart_port {int dummy; } ;
struct sci_port {TYPE_1__* params; scalar_t__ chan_rx; int /*<<< orphan*/  chan_tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ overrun_reg; unsigned short overrun_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SCSCR ; 
 unsigned short SCSCR_RIE ; 
 unsigned short SCSCR_TIE ; 
 scalar_t__ SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 unsigned short FUNC2 (struct uart_port*) ; 
 unsigned short FUNC3 (struct uart_port*) ; 
 unsigned short FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 TYPE_2__* FUNC7 (struct uart_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 int /*<<< orphan*/  FUNC10 (int,void*) ; 
 unsigned short FUNC11 (struct uart_port*,scalar_t__) ; 
 struct sci_port* FUNC12 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *ptr)
{
	unsigned short ssr_status, scr_status, err_enabled, orer_status = 0;
	struct uart_port *port = ptr;
	struct sci_port *s = FUNC12(port);
	irqreturn_t ret = IRQ_NONE;

	ssr_status = FUNC11(port, SCxSR);
	scr_status = FUNC11(port, SCSCR);
	if (s->params->overrun_reg == SCxSR)
		orer_status = ssr_status;
	else if (FUNC7(port, s->params->overrun_reg)->size)
		orer_status = FUNC11(port, s->params->overrun_reg);

	err_enabled = scr_status & FUNC4(port);

	/* Tx Interrupt */
	if ((ssr_status & FUNC3(port)) && (scr_status & SCSCR_TIE) &&
	    !s->chan_tx)
		ret = FUNC10(irq, ptr);

	/*
	 * Rx Interrupt: if we're using DMA, the DMA controller clears RDF /
	 * DR flags
	 */
	if (((ssr_status & FUNC2(port)) || s->chan_rx) &&
	    (scr_status & SCSCR_RIE))
		ret = FUNC9(irq, ptr);

	/* Error Interrupt */
	if ((ssr_status & FUNC1(port)) && err_enabled)
		ret = FUNC6(irq, ptr);

	/* Break Interrupt */
	if ((ssr_status & FUNC0(port)) && err_enabled)
		ret = FUNC5(irq, ptr);

	/* Overrun Interrupt */
	if (orer_status & s->params->overrun_mask) {
		FUNC8(port);
		ret = IRQ_HANDLED;
	}

	return ret;
}