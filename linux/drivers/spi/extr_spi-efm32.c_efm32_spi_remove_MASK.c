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
struct efm32_spi_ddata {int /*<<< orphan*/  clk; int /*<<< orphan*/  rxirq; int /*<<< orphan*/  txirq; int /*<<< orphan*/  bitbang; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_spi_ddata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct efm32_spi_ddata*) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct efm32_spi_ddata* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct spi_master *master = FUNC3(pdev);
	struct efm32_spi_ddata *ddata = FUNC5(master);

	FUNC4(&ddata->bitbang);

	FUNC1(ddata, 0, REG_IEN);

	FUNC2(ddata->txirq, ddata);
	FUNC2(ddata->rxirq, ddata);
	FUNC0(ddata->clk);
	FUNC6(master);

	return 0;
}