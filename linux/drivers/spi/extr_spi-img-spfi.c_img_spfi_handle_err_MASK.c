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
struct spi_master {int dummy; } ;
struct img_spfi {int tx_dma_busy; int rx_dma_busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_ch; int /*<<< orphan*/  tx_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct img_spfi* FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct spi_master *master,
				struct spi_message *msg)
{
	struct img_spfi *spfi = FUNC1(master);
	unsigned long flags;

	/*
	 * Stop all DMA and reset the controller if the previous transaction
	 * timed-out and never completed it's DMA.
	 */
	FUNC2(&spfi->lock, flags);
	if (spfi->tx_dma_busy || spfi->rx_dma_busy) {
		spfi->tx_dma_busy = false;
		spfi->rx_dma_busy = false;

		FUNC0(spfi->tx_ch);
		FUNC0(spfi->rx_ch);
	}
	FUNC3(&spfi->lock, flags);
}