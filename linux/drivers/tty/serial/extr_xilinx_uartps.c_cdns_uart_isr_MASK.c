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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CDNS_UART_CR ; 
 unsigned int CDNS_UART_CR_RX_DIS ; 
 scalar_t__ CDNS_UART_ISR ; 
 unsigned int CDNS_UART_IXR_RXMASK ; 
 unsigned int CDNS_UART_IXR_TXEMPTY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct uart_port *port = (struct uart_port *)dev_id;
	unsigned int isrstatus;

	FUNC3(&port->lock);

	/* Read the interrupt status register to determine which
	 * interrupt(s) is/are active and clear them.
	 */
	isrstatus = FUNC2(port->membase + CDNS_UART_ISR);
	FUNC5(isrstatus, port->membase + CDNS_UART_ISR);

	if (isrstatus & CDNS_UART_IXR_TXEMPTY) {
		FUNC1(dev_id);
		isrstatus &= ~CDNS_UART_IXR_TXEMPTY;
	}

	/*
	 * Skip RX processing if RX is disabled as RXEMPTY will never be set
	 * as read bytes will not be removed from the FIFO.
	 */
	if (isrstatus & CDNS_UART_IXR_RXMASK &&
	    !(FUNC2(port->membase + CDNS_UART_CR) & CDNS_UART_CR_RX_DIS))
		FUNC0(dev_id, isrstatus);

	FUNC4(&port->lock);
	return IRQ_HANDLED;
}