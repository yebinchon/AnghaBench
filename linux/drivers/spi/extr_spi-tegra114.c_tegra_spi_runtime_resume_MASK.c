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
struct tegra_spi_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct spi_master* FUNC2 (struct device*) ; 
 struct tegra_spi_data* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct spi_master *master = FUNC2(dev);
	struct tegra_spi_data *tspi = FUNC3(master);
	int ret;

	ret = FUNC0(tspi->clk);
	if (ret < 0) {
		FUNC1(tspi->dev, "clk_prepare failed: %d\n", ret);
		return ret;
	}
	return 0;
}