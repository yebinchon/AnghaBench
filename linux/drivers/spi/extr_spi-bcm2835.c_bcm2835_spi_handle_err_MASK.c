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
struct spi_message {int dummy; } ;
struct spi_controller {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct bcm2835_spi {int tx_dma_active; int rx_dma_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm2835_spi* FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static void FUNC4(struct spi_controller *ctlr,
				   struct spi_message *msg)
{
	struct bcm2835_spi *bs = FUNC3(ctlr);

	/* if an error occurred and we have an active dma, then terminate */
	FUNC2(ctlr->dma_tx);
	bs->tx_dma_active = false;
	FUNC2(ctlr->dma_rx);
	bs->rx_dma_active = false;
	FUNC1(bs);

	/* and reset */
	FUNC0(ctlr);
}