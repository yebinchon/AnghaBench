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
struct spi_master {void* dma_tx; void* dma_rx; } ;
struct pic32_spi {int /*<<< orphan*/  flags; struct spi_master* master; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int /*<<< orphan*/  PIC32F_DMA_PREP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*,char*) ; 
 scalar_t__ FUNC5 (struct pic32_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pic32_spi *pic32s, struct device *dev)
{
	struct spi_master *master = pic32s->master;
	dma_cap_mask_t mask;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	master->dma_rx = FUNC4(mask, NULL, NULL,
							  dev, "spi-rx");
	if (!master->dma_rx) {
		FUNC0(dev, "RX channel not found.\n");
		goto out_err;
	}

	master->dma_tx = FUNC4(mask, NULL, NULL,
							  dev, "spi-tx");
	if (!master->dma_tx) {
		FUNC0(dev, "TX channel not found.\n");
		goto out_err;
	}

	if (FUNC5(pic32s, DMA_SLAVE_BUSWIDTH_1_BYTE))
		goto out_err;

	/* DMA chnls allocated and prepared */
	FUNC6(PIC32F_DMA_PREP, &pic32s->flags);

	return;

out_err:
	if (master->dma_rx)
		FUNC3(master->dma_rx);

	if (master->dma_tx)
		FUNC3(master->dma_tx);
}