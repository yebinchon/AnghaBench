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
struct tegra_spi_data {scalar_t__ rx_dma_chan; scalar_t__ tx_dma_chan; int /*<<< orphan*/  irq; } ;
struct spi_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tegra_spi_data*) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tegra_spi_data* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_spi_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(pdev);
	struct tegra_spi_data	*tspi = FUNC4(master);

	FUNC0(tspi->irq, tspi);

	if (tspi->tx_dma_chan)
		FUNC5(tspi, false);

	if (tspi->rx_dma_chan)
		FUNC5(tspi, true);

	FUNC2(&pdev->dev);
	if (!FUNC3(&pdev->dev))
		FUNC6(&pdev->dev);

	return 0;
}