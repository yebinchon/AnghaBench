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
struct cdns_spi {int /*<<< orphan*/  pclk; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_SPI_ER ; 
 int /*<<< orphan*/  CDNS_SPI_ER_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct cdns_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cdns_spi* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct spi_master *master = FUNC2(pdev);
	struct cdns_spi *xspi = FUNC5(master);

	FUNC0(xspi, CDNS_SPI_ER, CDNS_SPI_ER_DISABLE);

	FUNC1(xspi->ref_clk);
	FUNC1(xspi->pclk);
	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);

	FUNC6(master);

	return 0;
}