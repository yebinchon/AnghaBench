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
struct tegra_sflash_data {int /*<<< orphan*/  clk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct device*) ; 
 struct tegra_sflash_data* FUNC2 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_sflash_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct spi_master *master = FUNC1(dev);
	struct tegra_sflash_data *tsd = FUNC2(master);

	/* Flush all write which are in PPSB queue by reading back */
	FUNC3(tsd, SPI_COMMAND);

	FUNC0(tsd->clk);
	return 0;
}