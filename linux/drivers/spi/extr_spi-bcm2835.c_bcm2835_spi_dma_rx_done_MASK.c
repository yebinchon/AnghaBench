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
struct spi_controller {int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  dma_tx; } ;
struct bcm2835_spi {int tx_dma_active; int rx_dma_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bcm2835_spi* FUNC4 (struct spi_controller*) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct spi_controller *ctlr = data;
	struct bcm2835_spi *bs = FUNC4(ctlr);

	/* terminate tx-dma as we do not have an irq for it
	 * because when the rx dma will terminate and this callback
	 * is called the tx-dma must have finished - can't get to this
	 * situation otherwise...
	 */
	FUNC3(ctlr->dma_tx);
	bs->tx_dma_active = false;
	bs->rx_dma_active = false;
	FUNC1(bs);

	/* reset fifo and HW */
	FUNC0(ctlr);

	/* and mark as completed */;
	FUNC2(&ctlr->xfer_completion);
}