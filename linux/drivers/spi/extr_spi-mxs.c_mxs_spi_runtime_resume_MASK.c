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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct mxs_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct spi_master *master = FUNC1(dev);
	struct mxs_spi *spi = FUNC4(master);
	struct mxs_ssp *ssp = &spi->ssp;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	ret = FUNC0(ssp->clk);
	if (ret)
		FUNC3(dev);

	return ret;
}