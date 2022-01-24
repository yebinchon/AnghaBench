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
typedef  size_t u32 ;
struct atlas7_pmx {scalar_t__* regs; } ;
struct atlas7_pad_config {unsigned long ad_ctrl_bit; scalar_t__ ad_ctrl_reg; } ;

/* Variables and functions */
 unsigned long ANA_CLEAR_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,scalar_t__,unsigned long) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct atlas7_pmx *pmx,
			struct atlas7_pad_config *conf,
			u32 bank, u32 ad_sel)
{
	unsigned long regv;

	/* Write to clear register to clear A/D selector */
	FUNC3(ANA_CLEAR_MASK << conf->ad_ctrl_bit,
		pmx->regs[bank] + FUNC0(conf->ad_ctrl_reg));

	/* Set target pad A/D selector */
	regv = FUNC2(pmx->regs[bank] + conf->ad_ctrl_reg);
	regv &= ~(ANA_CLEAR_MASK << conf->ad_ctrl_bit);
	FUNC3(regv | (ad_sel << conf->ad_ctrl_bit),
			pmx->regs[bank] + conf->ad_ctrl_reg);

	regv = FUNC2(pmx->regs[bank] + conf->ad_ctrl_reg);
	FUNC1("bank:%d reg:0x%04x val:0x%08lx\n",
			bank, conf->ad_ctrl_reg, regv);
	return 0;
}