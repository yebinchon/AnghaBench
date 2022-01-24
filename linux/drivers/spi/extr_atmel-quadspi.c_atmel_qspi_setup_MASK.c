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
struct spi_device {int /*<<< orphan*/  max_speed_hz; struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;
struct atmel_qspi {scalar_t__ regs; int /*<<< orphan*/  scr; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ QSPI_SCR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct atmel_qspi* FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct spi_controller *ctrl = spi->master;
	struct atmel_qspi *aq = FUNC3(ctrl);
	unsigned long src_rate;
	u32 scbr;

	if (ctrl->busy)
		return -EBUSY;

	if (!spi->max_speed_hz)
		return -EINVAL;

	src_rate = FUNC2(aq->pclk);
	if (!src_rate)
		return -EINVAL;

	/* Compute the QSPI baudrate */
	scbr = FUNC0(src_rate, spi->max_speed_hz);
	if (scbr > 0)
		scbr--;

	aq->scr = FUNC1(scbr);
	FUNC4(aq->scr, aq->regs + QSPI_SCR);

	return 0;
}