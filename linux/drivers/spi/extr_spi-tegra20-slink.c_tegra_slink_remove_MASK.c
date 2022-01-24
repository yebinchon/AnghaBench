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
struct tegra_slink_data {scalar_t__ rx_dma_chan; scalar_t__ tx_dma_chan; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; } ;
struct spi_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tegra_slink_data*) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tegra_slink_data* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_slink_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct spi_master *master = FUNC2(pdev);
	struct tegra_slink_data	*tspi = FUNC5(master);

	FUNC1(tspi->irq, tspi);

	FUNC0(tspi->clk);

	if (tspi->tx_dma_chan)
		FUNC6(tspi, false);

	if (tspi->rx_dma_chan)
		FUNC6(tspi, true);

	FUNC3(&pdev->dev);
	if (!FUNC4(&pdev->dev))
		FUNC7(&pdev->dev);

	return 0;
}