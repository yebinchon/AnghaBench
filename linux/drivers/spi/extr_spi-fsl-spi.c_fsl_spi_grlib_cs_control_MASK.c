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
typedef  int u32 ;
typedef  int u16 ;
struct spi_device {int chip_select; scalar_t__ cs_gpiod; int /*<<< orphan*/  master; } ;
struct mpc8xxx_spi {int native_chipselects; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int /*<<< orphan*/  slvsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct mpc8xxx_spi* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, bool on)
{
	struct mpc8xxx_spi *mpc8xxx_spi = FUNC3(spi->master);
	struct fsl_spi_reg *reg_base = mpc8xxx_spi->reg_base;
	u32 slvsel;
	u16 cs = spi->chip_select;

	if (spi->cs_gpiod) {
		FUNC0(spi->cs_gpiod, on);
	} else if (cs < mpc8xxx_spi->native_chipselects) {
		slvsel = FUNC1(&reg_base->slvsel);
		slvsel = on ? (slvsel | (1 << cs)) : (slvsel & ~(1 << cs));
		FUNC2(&reg_base->slvsel, slvsel);
	}
}