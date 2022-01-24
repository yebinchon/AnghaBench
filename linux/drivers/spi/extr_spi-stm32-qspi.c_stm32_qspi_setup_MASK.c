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
typedef  scalar_t__ u32 ;
struct stm32_qspi_flash {size_t cs; scalar_t__ presc; struct stm32_qspi* qspi; } ;
struct stm32_qspi {int cr_reg; int dcr_reg; int /*<<< orphan*/  lock; scalar_t__ io_base; struct stm32_qspi_flash* flash; int /*<<< orphan*/  clk_rate; } ;
struct spi_device {size_t chip_select; int /*<<< orphan*/  max_speed_hz; struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;

/* Variables and functions */
 int CR_EN ; 
 int CR_FTHRES_SHIFT ; 
 int CR_SSHIFT ; 
 int DCR_FSIZE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ QSPI_CR ; 
 scalar_t__ QSPI_DCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm32_qspi* FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct spi_controller *ctrl = spi->master;
	struct stm32_qspi *qspi = FUNC3(ctrl);
	struct stm32_qspi_flash *flash;
	u32 presc;

	if (ctrl->busy)
		return -EBUSY;

	if (!spi->max_speed_hz)
		return -EINVAL;

	presc = FUNC0(qspi->clk_rate, spi->max_speed_hz) - 1;

	flash = &qspi->flash[spi->chip_select];
	flash->qspi = qspi;
	flash->cs = spi->chip_select;
	flash->presc = presc;

	FUNC1(&qspi->lock);
	qspi->cr_reg = 3 << CR_FTHRES_SHIFT | CR_SSHIFT | CR_EN;
	FUNC4(qspi->cr_reg, qspi->io_base + QSPI_CR);

	/* set dcr fsize to max address */
	qspi->dcr_reg = DCR_FSIZE_MASK;
	FUNC4(qspi->dcr_reg, qspi->io_base + QSPI_DCR);
	FUNC2(&qspi->lock);

	return 0;
}