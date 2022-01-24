#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {scalar_t__ tx_running; TYPE_3__* txchan; int /*<<< orphan*/  tx_addr; TYPE_3__* rxchan; int /*<<< orphan*/  rx_addr; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_size; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(struct uart_8250_port *p)
{
	struct uart_8250_dma *dma = p->dma;

	if (!dma)
		return;

	/* Release RX resources */
	FUNC4(dma->rxchan);
	FUNC1(dma->rxchan->device->dev, dma->rx_size, dma->rx_buf,
			  dma->rx_addr);
	FUNC2(dma->rxchan);
	dma->rxchan = NULL;

	/* Release TX resources */
	FUNC4(dma->txchan);
	FUNC3(dma->txchan->device->dev, dma->tx_addr,
			 UART_XMIT_SIZE, DMA_TO_DEVICE);
	FUNC2(dma->txchan);
	dma->txchan = NULL;
	dma->tx_running = 0;

	FUNC0(p->port.dev, "dma channels released\n");
}