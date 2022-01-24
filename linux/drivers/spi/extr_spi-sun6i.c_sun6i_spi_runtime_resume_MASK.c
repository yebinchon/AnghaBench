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
struct sun6i_spi {int /*<<< orphan*/  hclk; int /*<<< orphan*/  mclk; int /*<<< orphan*/  rstc; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SUN6I_GBL_CTL_BUS_ENABLE ; 
 int SUN6I_GBL_CTL_MASTER ; 
 int /*<<< orphan*/  SUN6I_GBL_CTL_REG ; 
 int SUN6I_GBL_CTL_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct spi_master* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct sun6i_spi* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct sun6i_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct spi_master *master = FUNC3(dev);
	struct sun6i_spi *sspi = FUNC5(master);
	int ret;

	ret = FUNC1(sspi->hclk);
	if (ret) {
		FUNC2(dev, "Couldn't enable AHB clock\n");
		goto out;
	}

	ret = FUNC1(sspi->mclk);
	if (ret) {
		FUNC2(dev, "Couldn't enable module clock\n");
		goto err;
	}

	ret = FUNC4(sspi->rstc);
	if (ret) {
		FUNC2(dev, "Couldn't deassert the device from reset\n");
		goto err2;
	}

	FUNC6(sspi, SUN6I_GBL_CTL_REG,
			SUN6I_GBL_CTL_BUS_ENABLE | SUN6I_GBL_CTL_MASTER | SUN6I_GBL_CTL_TP);

	return 0;

err2:
	FUNC0(sspi->mclk);
err:
	FUNC0(sspi->hclk);
out:
	return ret;
}