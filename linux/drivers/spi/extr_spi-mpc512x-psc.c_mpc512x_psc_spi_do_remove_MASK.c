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
struct mpc512x_psc_spi {int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_mclk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct device*) ; 
 struct mpc512x_psc_spi* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct spi_master *master = FUNC1(dev);
	struct mpc512x_psc_spi *mps = FUNC2(master);

	FUNC0(mps->clk_mclk);
	FUNC0(mps->clk_ipg);

	return 0;
}