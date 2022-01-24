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
struct ep93xx_spi {scalar_t__ zeropage; int /*<<< orphan*/  tx_sgt; scalar_t__ dma_tx; int /*<<< orphan*/  rx_sgt; scalar_t__ dma_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ep93xx_spi *espi)
{
	if (espi->dma_rx) {
		FUNC0(espi->dma_rx);
		FUNC2(&espi->rx_sgt);
	}
	if (espi->dma_tx) {
		FUNC0(espi->dma_tx);
		FUNC2(&espi->tx_sgt);
	}

	if (espi->zeropage)
		FUNC1((unsigned long)espi->zeropage);
}