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
typedef  int /*<<< orphan*/  u32 ;
struct spi_master {scalar_t__ num_chipselect; } ;
struct mpc8xxx_spi {int max_bits_per_word; scalar_t__ native_chipselects; int /*<<< orphan*/  set_shifts; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int /*<<< orphan*/  slvsel; int /*<<< orphan*/  cap; } ;
struct fsl_spi_platform_data {int /*<<< orphan*/  cs_control; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct device*) ; 
 struct fsl_spi_platform_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  fsl_spi_grlib_cs_control ; 
 int /*<<< orphan*/  fsl_spi_grlib_set_shifts ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct mpc8xxx_spi* FUNC7 (struct spi_master*) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct fsl_spi_platform_data *pdata = FUNC4(dev);
	struct spi_master *master = FUNC3(dev);
	struct mpc8xxx_spi *mpc8xxx_spi = FUNC7(master);
	struct fsl_spi_reg *reg_base = mpc8xxx_spi->reg_base;
	int mbits;
	u32 capabilities;

	capabilities = FUNC5(&reg_base->cap);

	mpc8xxx_spi->set_shifts = fsl_spi_grlib_set_shifts;
	mbits = FUNC0(capabilities);
	if (mbits)
		mpc8xxx_spi->max_bits_per_word = mbits + 1;

	mpc8xxx_spi->native_chipselects = 0;
	if (FUNC1(capabilities)) {
		mpc8xxx_spi->native_chipselects = FUNC2(capabilities);
		FUNC6(&reg_base->slvsel, 0xffffffff);
	}
	master->num_chipselect = mpc8xxx_spi->native_chipselects;
	pdata->cs_control = fsl_spi_grlib_cs_control;
}