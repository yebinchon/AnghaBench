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
struct mxs_ssp {int /*<<< orphan*/  clk; } ;
struct mxs_spi {struct mxs_ssp ssp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 int FUNC4 (struct device*) ; 
 struct mxs_spi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct spi_master *master = FUNC2(dev);
	struct mxs_spi *spi = FUNC5(master);
	struct mxs_ssp *ssp = &spi->ssp;
	int ret;

	FUNC0(ssp->clk);

	ret = FUNC4(dev);
	if (ret) {
		int ret2 = FUNC1(ssp->clk);

		if (ret2)
			FUNC3(dev, "Failed to reenable clock after failing pinctrl request (pinctrl: %d, clk: %d)\n",
				 ret, ret2);
	}

	return ret;
}