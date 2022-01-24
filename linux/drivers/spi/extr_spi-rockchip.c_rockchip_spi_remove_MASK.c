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
struct spi_master {scalar_t__ dma_rx; scalar_t__ dma_tx; } ;
struct rockchip_spi {int /*<<< orphan*/  apb_pclk; int /*<<< orphan*/  spiclk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC7 (int /*<<< orphan*/ ) ; 
 struct rockchip_spi* FUNC8 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_master*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct spi_master *master = FUNC7(FUNC2(pdev));
	struct rockchip_spi *rs = FUNC8(master);

	FUNC4(&pdev->dev);

	FUNC0(rs->spiclk);
	FUNC0(rs->apb_pclk);

	FUNC5(&pdev->dev);
	FUNC3(&pdev->dev);
	FUNC6(&pdev->dev);

	if (master->dma_tx)
		FUNC1(master->dma_tx);
	if (master->dma_rx)
		FUNC1(master->dma_rx);

	FUNC9(master);

	return 0;
}