#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {size_t chip_select; int /*<<< orphan*/  cs_gpio; TYPE_1__* master; struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_dma {int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/ * dma_rx; } ;
struct omap2_mcspi_cs {int /*<<< orphan*/  node; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;
struct TYPE_2__ {size_t num_chipselect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap2_mcspi_cs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct omap2_mcspi* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi)
{
	struct omap2_mcspi	*mcspi;
	struct omap2_mcspi_dma	*mcspi_dma;
	struct omap2_mcspi_cs	*cs;

	mcspi = FUNC5(spi->master);

	if (spi->controller_state) {
		/* Unlink controller state from context save list */
		cs = spi->controller_state;
		FUNC4(&cs->node);

		FUNC3(cs);
	}

	if (spi->chip_select < spi->master->num_chipselect) {
		mcspi_dma = &mcspi->dma_channels[spi->chip_select];

		if (mcspi_dma->dma_rx) {
			FUNC0(mcspi_dma->dma_rx);
			mcspi_dma->dma_rx = NULL;
		}
		if (mcspi_dma->dma_tx) {
			FUNC0(mcspi_dma->dma_tx);
			mcspi_dma->dma_tx = NULL;
		}
	}

	if (FUNC2(spi->cs_gpio))
		FUNC1(spi->cs_gpio);
}