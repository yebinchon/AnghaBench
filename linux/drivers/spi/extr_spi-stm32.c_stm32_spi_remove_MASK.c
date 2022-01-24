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
struct stm32_spi {int /*<<< orphan*/  clk; TYPE_1__* cfg; } ;
struct spi_master {scalar_t__ dma_rx; scalar_t__ dma_tx; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct stm32_spi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stm32_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_spi*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master = FUNC2(pdev);
	struct stm32_spi *spi = FUNC4(master);

	spi->cfg->disable(spi);

	if (master->dma_tx)
		FUNC1(master->dma_tx);
	if (master->dma_rx)
		FUNC1(master->dma_rx);

	FUNC0(spi->clk);

	FUNC3(&pdev->dev);

	return 0;
}