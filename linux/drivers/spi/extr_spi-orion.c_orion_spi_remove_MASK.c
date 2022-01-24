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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct orion_spi {int /*<<< orphan*/  clk; int /*<<< orphan*/  axi_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct orion_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(pdev);
	struct orion_spi *spi = FUNC4(master);

	FUNC3(&pdev->dev);
	FUNC0(spi->axi_clk);
	FUNC0(spi->clk);

	FUNC5(master);
	FUNC2(&pdev->dev);

	return 0;
}