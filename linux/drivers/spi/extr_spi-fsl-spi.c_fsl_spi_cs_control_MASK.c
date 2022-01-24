#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* parent; } ;
struct spi_device {TYPE_2__ dev; scalar_t__ cs_gpiod; } ;
struct mpc8xxx_spi_probe_info {int /*<<< orphan*/  immr_spi_cs; } ;
struct fsl_spi_platform_data {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_BOOT_SEL_BIT ; 
 scalar_t__ FUNC0 (int) ; 
 struct fsl_spi_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc8xxx_spi_probe_info* FUNC4 (struct fsl_spi_platform_data*) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi, bool on)
{
	if (spi->cs_gpiod) {
		FUNC2(spi->cs_gpiod, on);
	} else {
		struct device *dev = spi->dev.parent->parent;
		struct fsl_spi_platform_data *pdata = FUNC1(dev);
		struct mpc8xxx_spi_probe_info *pinfo = FUNC4(pdata);

		if (FUNC0(!pinfo->immr_spi_cs))
			return;
		FUNC3(on ? SPI_BOOT_SEL_BIT : 0, pinfo->immr_spi_cs);
	}
}