#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ch; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch; } ;
struct s3c64xx_spi_driver_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  src_clk; int /*<<< orphan*/  ioclk; TYPE_2__ tx_dma; TYPE_1__ rx_dma; scalar_t__ regs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ S3C64XX_SPI_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c64xx_spi_driver_data*) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct s3c64xx_spi_driver_data* FUNC8 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(pdev);
	struct s3c64xx_spi_driver_data *sdd = FUNC8(master);

	FUNC5(&pdev->dev);

	FUNC9(0, sdd->regs + S3C64XX_SPI_INT_EN);

	if (!FUNC2(sdd)) {
		FUNC1(sdd->rx_dma.ch);
		FUNC1(sdd->tx_dma.ch);
	}

	FUNC0(sdd->ioclk);

	FUNC0(sdd->src_clk);

	FUNC0(sdd->clk);

	FUNC6(&pdev->dev);
	FUNC4(&pdev->dev);
	FUNC7(&pdev->dev);

	return 0;
}