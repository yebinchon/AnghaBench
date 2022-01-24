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
struct spi_imx_data {int /*<<< orphan*/  clk_per; int /*<<< orphan*/  clk_ipg; scalar_t__ base; int /*<<< orphan*/  bitbang; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MXC_CSPICTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_imx_data*) ; 
 struct spi_imx_data* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(pdev);
	struct spi_imx_data *spi_imx = FUNC6(master);
	int ret;

	FUNC4(&spi_imx->bitbang);

	ret = FUNC2(spi_imx->clk_per);
	if (ret)
		return ret;

	ret = FUNC2(spi_imx->clk_ipg);
	if (ret) {
		FUNC0(spi_imx->clk_per);
		return ret;
	}

	FUNC8(0, spi_imx->base + MXC_CSPICTRL);
	FUNC1(spi_imx->clk_ipg);
	FUNC1(spi_imx->clk_per);
	FUNC5(spi_imx);
	FUNC7(master);

	return 0;
}