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
struct spi_device {size_t chip_select; int mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  cs_gpio; struct omap2_mcspi_cs* controller_state; int /*<<< orphan*/  master; } ;
struct omap2_mcspi_regs {int /*<<< orphan*/  cs; } ;
struct omap2_mcspi_dma {int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;
struct omap2_mcspi_cs {int /*<<< orphan*/  node; scalar_t__ chctrl0; scalar_t__ chconf0; scalar_t__ mode; scalar_t__ phys; scalar_t__ base; } ;
struct omap2_mcspi {int /*<<< orphan*/  dev; scalar_t__ phys; scalar_t__ base; struct omap2_mcspi_dma* dma_channels; struct omap2_mcspi_regs ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap2_mcspi_cs* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct spi_device*) ; 
 int FUNC9 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct omap2_mcspi* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	int			ret;
	struct omap2_mcspi	*mcspi = FUNC14(spi->master);
	struct omap2_mcspi_regs	*ctx = &mcspi->ctx;
	struct omap2_mcspi_dma	*mcspi_dma;
	struct omap2_mcspi_cs	*cs = spi->controller_state;

	mcspi_dma = &mcspi->dma_channels[spi->chip_select];

	if (!cs) {
		cs = FUNC6(sizeof *cs, GFP_KERNEL);
		if (!cs)
			return -ENOMEM;
		cs->base = mcspi->base + spi->chip_select * 0x14;
		cs->phys = mcspi->phys + spi->chip_select * 0x14;
		cs->mode = 0;
		cs->chconf0 = 0;
		cs->chctrl0 = 0;
		spi->controller_state = cs;
		/* Link this to context save list */
		FUNC7(&cs->node, &ctx->cs);

		if (FUNC4(spi->cs_gpio)) {
			ret = FUNC5(spi->cs_gpio, FUNC1(&spi->dev));
			if (ret) {
				FUNC0(&spi->dev, "failed to request gpio\n");
				return ret;
			}
			FUNC3(spi->cs_gpio,
					 !(spi->mode & SPI_CS_HIGH));
		}
	}

	if (!mcspi_dma->dma_rx || !mcspi_dma->dma_tx) {
		ret = FUNC8(spi);
		if (ret)
			FUNC2(&spi->dev, "not using DMA for McSPI (%d)\n",
				 ret);
	}

	ret = FUNC10(mcspi->dev);
	if (ret < 0) {
		FUNC13(mcspi->dev);

		return ret;
	}

	ret = FUNC9(spi, NULL);
	FUNC11(mcspi->dev);
	FUNC12(mcspi->dev);

	return ret;
}