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
struct spi_mpc8xxx_cs {int hw_mode; } ;
struct spi_device {int mode; int /*<<< orphan*/  master; int /*<<< orphan*/  max_speed_hz; } ;
struct mpc8xxx_spi {struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITBANG_CS_INACTIVE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int SPMODE_CI_INACTIVEHIGH ; 
 int SPMODE_CP_BEGIN_EDGECLK ; 
 int SPMODE_LOOP ; 
 int SPMODE_REV ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_mpc8xxx_cs* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct spi_mpc8xxx_cs* FUNC4 (struct spi_device*) ; 
 struct mpc8xxx_spi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct spi_mpc8xxx_cs*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct mpc8xxx_spi *mpc8xxx_spi;
	struct fsl_spi_reg *reg_base;
	int retval;
	u32 hw_mode;
	struct spi_mpc8xxx_cs *cs = FUNC4(spi);

	if (!spi->max_speed_hz)
		return -EINVAL;

	if (!cs) {
		cs = FUNC2(sizeof(*cs), GFP_KERNEL);
		if (!cs)
			return -ENOMEM;
		FUNC6(spi, cs);
	}
	mpc8xxx_spi = FUNC5(spi->master);

	reg_base = mpc8xxx_spi->reg_base;

	hw_mode = cs->hw_mode; /* Save original settings */
	cs->hw_mode = FUNC3(&reg_base->mode);
	/* mask out bits we are going to set */
	cs->hw_mode &= ~(SPMODE_CP_BEGIN_EDGECLK | SPMODE_CI_INACTIVEHIGH
			 | SPMODE_REV | SPMODE_LOOP);

	if (spi->mode & SPI_CPHA)
		cs->hw_mode |= SPMODE_CP_BEGIN_EDGECLK;
	if (spi->mode & SPI_CPOL)
		cs->hw_mode |= SPMODE_CI_INACTIVEHIGH;
	if (!(spi->mode & SPI_LSB_FIRST))
		cs->hw_mode |= SPMODE_REV;
	if (spi->mode & SPI_LOOP)
		cs->hw_mode |= SPMODE_LOOP;

	retval = FUNC1(spi, NULL);
	if (retval < 0) {
		cs->hw_mode = hw_mode; /* Restore settings */
		return retval;
	}

	/* Initialize chipselect - might be active for SPI_CS_HIGH mode */
	FUNC0(spi, BITBANG_CS_INACTIVE);

	return 0;
}