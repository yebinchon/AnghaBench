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
struct spi_device {int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_CS_MASK ; 
 int /*<<< orphan*/  MM_SWITCH ; 
 int /*<<< orphan*/  QSPI_SPI_SWITCH_REG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_qspi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	struct ti_qspi  *qspi = FUNC2(spi->master);

	FUNC3(qspi, MM_SWITCH, QSPI_SPI_SWITCH_REG);
	if (qspi->ctrl_base) {
		FUNC1(qspi->ctrl_base, qspi->ctrl_reg,
				   MEM_CS_MASK,
				   FUNC0(spi->chip_select));
	}
	qspi->mmap_enabled = true;
}