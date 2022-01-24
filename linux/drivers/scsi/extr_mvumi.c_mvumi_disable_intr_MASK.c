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
struct mvumi_hw_regs {unsigned int int_dl_cpu2pciea; unsigned int int_comaout; unsigned int int_comaerr; int /*<<< orphan*/  enpointa_mask_reg; int /*<<< orphan*/  arm_to_pciea_mask_reg; } ;
struct mvumi_hba {struct mvumi_hw_regs* regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mvumi_hba *mhba)
{
	unsigned int mask;
	struct mvumi_hw_regs *regs = mhba->regs;

	FUNC1(0, regs->arm_to_pciea_mask_reg);
	mask = FUNC0(regs->enpointa_mask_reg);
	mask &= ~(regs->int_dl_cpu2pciea | regs->int_comaout |
							regs->int_comaerr);
	FUNC1(mask, regs->enpointa_mask_reg);
}