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
struct zynq_qspi {int /*<<< orphan*/  pclk; int /*<<< orphan*/  refclk; } ;
struct spi_device {struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ZYNQ_QSPI_ENABLE_ENABLE_MASK ; 
 int /*<<< orphan*/  ZYNQ_QSPI_ENABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct zynq_qspi* FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct zynq_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct spi_controller *ctrl = spi->master;
	struct zynq_qspi *qspi = FUNC1(ctrl);

	if (ctrl->busy)
		return -EBUSY;

	FUNC0(qspi->refclk);
	FUNC0(qspi->pclk);
	FUNC2(qspi, ZYNQ_QSPI_ENABLE_OFFSET,
			ZYNQ_QSPI_ENABLE_ENABLE_MASK);

	return 0;
}