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
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct davinci_spi {scalar_t__ dma_tx; scalar_t__ dma_rx; int /*<<< orphan*/  clk; int /*<<< orphan*/  bitbang; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct davinci_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct davinci_spi *dspi;
	struct spi_master *master;

	master = FUNC2(pdev);
	dspi = FUNC4(master);

	FUNC3(&dspi->bitbang);

	FUNC0(dspi->clk);
	FUNC5(master);

	if (dspi->dma_rx) {
		FUNC1(dspi->dma_rx);
		FUNC1(dspi->dma_tx);
	}

	return 0;
}