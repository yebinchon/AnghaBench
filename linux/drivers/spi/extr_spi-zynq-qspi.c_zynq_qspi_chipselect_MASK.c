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
struct zynq_qspi {int dummy; } ;
struct spi_device {int /*<<< orphan*/  chip_select; struct spi_controller* master; } ;
struct spi_controller {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZYNQ_QSPI_CONFIG_OFFSET ; 
 int ZYNQ_QSPI_CONFIG_SSCTRL_MASK ; 
 int ZYNQ_QSPI_SS_SHIFT ; 
 struct zynq_qspi* FUNC1 (struct spi_controller*) ; 
 int FUNC2 (struct zynq_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zynq_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, bool assert)
{
	struct spi_controller *ctrl = spi->master;
	struct zynq_qspi *xqspi = FUNC1(ctrl);
	u32 config_reg;

	config_reg = FUNC2(xqspi, ZYNQ_QSPI_CONFIG_OFFSET);
	if (assert) {
		/* Select the slave */
		config_reg &= ~ZYNQ_QSPI_CONFIG_SSCTRL_MASK;
		config_reg |= (((~(FUNC0(spi->chip_select))) <<
				ZYNQ_QSPI_SS_SHIFT) &
				ZYNQ_QSPI_CONFIG_SSCTRL_MASK);
	} else {
		config_reg |= ZYNQ_QSPI_CONFIG_SSCTRL_MASK;
	}

	FUNC3(xqspi, ZYNQ_QSPI_CONFIG_OFFSET, config_reg);
}