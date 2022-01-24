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
struct synquacer_spi {scalar_t__ clk_src_type; scalar_t__ regs; } ;
struct spi_master {int dummy; } ;

/* Variables and functions */
 scalar_t__ SYNQUACER_HSSPI_CLOCK_SRC_IPCLK ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_DMCFG_MSTARTEN ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_DMCFG_SSDC ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_MCTRL_CDSS ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_MCTRL_MEN ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_MCTRL_SYNCON ; 
 scalar_t__ SYNQUACER_HSSPI_REG_DMCFG ; 
 scalar_t__ SYNQUACER_HSSPI_REG_FAULTC ; 
 scalar_t__ SYNQUACER_HSSPI_REG_MCTRL ; 
 scalar_t__ SYNQUACER_HSSPI_REG_RXC ; 
 scalar_t__ SYNQUACER_HSSPI_REG_RXE ; 
 scalar_t__ SYNQUACER_HSSPI_REG_TXC ; 
 scalar_t__ SYNQUACER_HSSPI_REG_TXE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct synquacer_spi* FUNC1 (struct spi_master*) ; 
 int FUNC2 (struct synquacer_spi*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master)
{
	u32 val;
	int status;
	struct synquacer_spi *sspi = FUNC1(master);

	/* Disable module */
	FUNC3(0, sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
	status = FUNC2(sspi, false);
	if (status < 0)
		return status;

	FUNC3(0, sspi->regs + SYNQUACER_HSSPI_REG_TXE);
	FUNC3(0, sspi->regs + SYNQUACER_HSSPI_REG_RXE);
	FUNC3(~0, sspi->regs + SYNQUACER_HSSPI_REG_TXC);
	FUNC3(~0, sspi->regs + SYNQUACER_HSSPI_REG_RXC);
	FUNC3(~0, sspi->regs + SYNQUACER_HSSPI_REG_FAULTC);

	val = FUNC0(sspi->regs + SYNQUACER_HSSPI_REG_DMCFG);
	val &= ~SYNQUACER_HSSPI_DMCFG_SSDC;
	val &= ~SYNQUACER_HSSPI_DMCFG_MSTARTEN;
	FUNC3(val, sspi->regs + SYNQUACER_HSSPI_REG_DMCFG);

	val = FUNC0(sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
	if (sspi->clk_src_type == SYNQUACER_HSSPI_CLOCK_SRC_IPCLK)
		val |= SYNQUACER_HSSPI_MCTRL_CDSS;
	else
		val &= ~SYNQUACER_HSSPI_MCTRL_CDSS;

	val &= ~SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN;
	val |= SYNQUACER_HSSPI_MCTRL_MEN;
	val |= SYNQUACER_HSSPI_MCTRL_SYNCON;

	/* Enable module */
	FUNC3(val, sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
	status = FUNC2(sspi, true);
	if (status < 0)
		return status;

	return 0;
}