#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct au1550_spi {TYPE_1__* regs; scalar_t__ usedma; } ;
struct TYPE_2__ {int psc_spicfg; int psc_spistat; int /*<<< orphan*/  psc_ctrl; int /*<<< orphan*/  psc_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  PSC_CTRL_ENABLE ; 
 int /*<<< orphan*/  PSC_SEL_PS_SPIMODE ; 
 int PSC_SPICFG_DD_DISABLE ; 
 int PSC_SPICFG_DE_ENABLE ; 
 int PSC_SPICFG_LB ; 
 int PSC_SPICFG_RT_FIFO8 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int PSC_SPICFG_TT_FIFO8 ; 
 int PSC_SPISTAT_DR ; 
 int PSC_SPISTAT_SR ; 
 int /*<<< orphan*/  FUNC3 (struct au1550_spi*) ; 
 int /*<<< orphan*/  FUNC4 (struct au1550_spi*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct au1550_spi *hw)
{
	u32 stat, cfg;

	/* set up the PSC for SPI mode */
	hw->regs->psc_ctrl = PSC_CTRL_DISABLE;
	FUNC5(); /* drain writebuffer */
	hw->regs->psc_sel = PSC_SEL_PS_SPIMODE;
	FUNC5(); /* drain writebuffer */

	hw->regs->psc_spicfg = 0;
	FUNC5(); /* drain writebuffer */

	hw->regs->psc_ctrl = PSC_CTRL_ENABLE;
	FUNC5(); /* drain writebuffer */

	do {
		stat = hw->regs->psc_spistat;
		FUNC5(); /* drain writebuffer */
	} while ((stat & PSC_SPISTAT_SR) == 0);


	cfg = hw->usedma ? 0 : PSC_SPICFG_DD_DISABLE;
	cfg |= FUNC2(8);
	cfg |= PSC_SPICFG_RT_FIFO8 | PSC_SPICFG_TT_FIFO8;
	/* use minimal allowed brg and div values as initial setting: */
	cfg |= FUNC0(4) | FUNC1(0);

#ifdef AU1550_SPI_DEBUG_LOOPBACK
	cfg |= PSC_SPICFG_LB;
#endif

	hw->regs->psc_spicfg = cfg;
	FUNC5(); /* drain writebuffer */

	FUNC3(hw);

	hw->regs->psc_spicfg |= PSC_SPICFG_DE_ENABLE;
	FUNC5(); /* drain writebuffer */

	do {
		stat = hw->regs->psc_spistat;
		FUNC5(); /* drain writebuffer */
	} while ((stat & PSC_SPISTAT_DR) == 0);

	FUNC4(hw);
}