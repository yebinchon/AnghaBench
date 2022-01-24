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
struct zynqmp_qspi {int /*<<< orphan*/  pclk; int /*<<< orphan*/  refclk; } ;
struct spi_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GQSPI_EN_OFST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct zynqmp_qspi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(pdev);
	struct zynqmp_qspi *xqspi = FUNC4(master);

	FUNC6(xqspi, GQSPI_EN_OFST, 0x0);
	FUNC0(xqspi->refclk);
	FUNC0(xqspi->pclk);
	FUNC3(&pdev->dev);
	FUNC2(&pdev->dev);

	FUNC5(master);

	return 0;
}