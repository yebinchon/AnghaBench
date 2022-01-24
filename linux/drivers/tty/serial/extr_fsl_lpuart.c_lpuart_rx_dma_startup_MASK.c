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
struct lpuart_port {int dma_rx_timeout; int lpuart_dma_rx_use; scalar_t__ dma_rx_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct lpuart_port*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpuart_port*) ; 

__attribute__((used)) static void FUNC3(struct lpuart_port *sport)
{
	if (sport->dma_rx_chan && !FUNC0(sport)) {
		/* set Rx DMA timeout */
		sport->dma_rx_timeout = FUNC1(DMA_RX_TIMEOUT);
		if (!sport->dma_rx_timeout)
			sport->dma_rx_timeout = 1;

		sport->lpuart_dma_rx_use = true;
		FUNC2(sport);
	} else {
		sport->lpuart_dma_rx_use = false;
	}
}