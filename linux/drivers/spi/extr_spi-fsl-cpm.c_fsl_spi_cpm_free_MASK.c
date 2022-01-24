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
struct mpc8xxx_spi {int flags; int /*<<< orphan*/  pram; int /*<<< orphan*/  tx_bd; int /*<<< orphan*/  dma_dummy_tx; int /*<<< orphan*/  dma_dummy_rx; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SPI_CPM_MODE ; 
 int /*<<< orphan*/  SPI_MRBLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct mpc8xxx_spi *mspi)
{
	struct device *dev = mspi->dev;

	if (!(mspi->flags & SPI_CPM_MODE))
		return;

	FUNC2(dev, mspi->dma_dummy_rx, SPI_MRBLR, DMA_FROM_DEVICE);
	FUNC2(dev, mspi->dma_dummy_tx, PAGE_SIZE, DMA_TO_DEVICE);
	FUNC0(FUNC1(mspi->tx_bd));
	FUNC0(FUNC1(mspi->pram));
	FUNC3();
}