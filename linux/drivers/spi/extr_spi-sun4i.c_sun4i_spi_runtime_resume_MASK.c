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
struct sun4i_spi {int /*<<< orphan*/  hclk; int /*<<< orphan*/  mclk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SUN4I_CTL_ENABLE ; 
 int SUN4I_CTL_MASTER ; 
 int /*<<< orphan*/  SUN4I_CTL_REG ; 
 int SUN4I_CTL_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct spi_master* FUNC3 (struct device*) ; 
 struct sun4i_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct sun4i_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct spi_master *master = FUNC3(dev);
	struct sun4i_spi *sspi = FUNC4(master);
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

	FUNC5(sspi, SUN4I_CTL_REG,
			SUN4I_CTL_ENABLE | SUN4I_CTL_MASTER | SUN4I_CTL_TP);

	return 0;

err:
	FUNC0(sspi->hclk);
out:
	return ret;
}