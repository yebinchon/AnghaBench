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
typedef  scalar_t__ u32 ;
struct uart_port {int /*<<< orphan*/  lock; } ;
struct msm_dma {int /*<<< orphan*/  chan; scalar_t__ count; } ;
struct msm_port {int break_detected; scalar_t__ imr; scalar_t__ is_uartdm; struct msm_dma rx_dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UART_CR ; 
 scalar_t__ UART_CR_CMD_RESET_RXBREAK_START ; 
 scalar_t__ UART_CR_CMD_RESET_STALE_INT ; 
 scalar_t__ UART_CR_CMD_STALE_EVENT_DISABLE ; 
 int /*<<< orphan*/  UART_IMR ; 
 unsigned int UART_IMR_DELTA_CTS ; 
 unsigned int UART_IMR_RXBREAK_START ; 
 unsigned int UART_IMR_RXLEV ; 
 unsigned int UART_IMR_RXSTALE ; 
 unsigned int UART_IMR_TXLEV ; 
 int /*<<< orphan*/  UART_MISR ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 unsigned int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct msm_port *msm_port = FUNC0(port);
	struct msm_dma *dma = &msm_port->rx_dma;
	unsigned long flags;
	unsigned int misr;
	u32 val;

	FUNC8(&port->lock, flags);
	misr = FUNC6(port, UART_MISR);
	FUNC7(port, 0, UART_IMR); /* disable interrupt */

	if (misr & UART_IMR_RXBREAK_START) {
		msm_port->break_detected = true;
		FUNC7(port, UART_CR_CMD_RESET_RXBREAK_START, UART_CR);
	}

	if (misr & (UART_IMR_RXLEV | UART_IMR_RXSTALE)) {
		if (dma->count) {
			val = UART_CR_CMD_STALE_EVENT_DISABLE;
			FUNC7(port, val, UART_CR);
			val = UART_CR_CMD_RESET_STALE_INT;
			FUNC7(port, val, UART_CR);
			/*
			 * Flush DMA input fifo to memory, this will also
			 * trigger DMA RX completion
			 */
			FUNC1(dma->chan);
		} else if (msm_port->is_uartdm) {
			FUNC4(port, misr);
		} else {
			FUNC3(port);
		}
	}
	if (misr & UART_IMR_TXLEV)
		FUNC5(port);
	if (misr & UART_IMR_DELTA_CTS)
		FUNC2(port);

	FUNC7(port, msm_port->imr, UART_IMR); /* restore interrupt */
	FUNC9(&port->lock, flags);

	return IRQ_HANDLED;
}