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
struct ti_qspi {int mmap_enabled; int /*<<< orphan*/  ctrl_reg; scalar_t__ ctrl_base; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CS_MASK ; 
 int /*<<< orphan*/  QSPI_SPI_SWITCH_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_qspi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi)
{
	struct ti_qspi  *qspi = FUNC1(spi->master);

	FUNC2(qspi, 0, QSPI_SPI_SWITCH_REG);
	if (qspi->ctrl_base)
		FUNC0(qspi->ctrl_base, qspi->ctrl_reg,
				   MEM_CS_MASK, 0);
	qspi->mmap_enabled = false;
}