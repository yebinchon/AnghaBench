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
struct uart_8250_port {struct uart_8250_dma* dma; } ;
struct uart_8250_dma {int rx_running; int /*<<< orphan*/  rxchan; int /*<<< orphan*/  rx_cookie; int /*<<< orphan*/  rx_size; int /*<<< orphan*/  rx_addr; } ;
struct dma_async_tx_descriptor {struct uart_8250_port* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int DMA_PREP_INTERRUPT ; 
 int EBUSY ; 
 int /*<<< orphan*/  __dma_rx_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*) ; 

int FUNC3(struct uart_8250_port *p)
{
	struct uart_8250_dma		*dma = p->dma;
	struct dma_async_tx_descriptor	*desc;

	if (dma->rx_running)
		return 0;

	desc = FUNC1(dma->rxchan, dma->rx_addr,
					   dma->rx_size, DMA_DEV_TO_MEM,
					   DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc)
		return -EBUSY;

	dma->rx_running = 1;
	desc->callback = __dma_rx_complete;
	desc->callback_param = p;

	dma->rx_cookie = FUNC2(desc);

	FUNC0(dma->rxchan);

	return 0;
}