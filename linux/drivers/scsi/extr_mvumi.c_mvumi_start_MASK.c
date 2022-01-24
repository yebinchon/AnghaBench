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
struct mvumi_hw_regs {unsigned int int_drbl_int_mask; unsigned int int_dl_cpu2pciea; int /*<<< orphan*/  enpointa_mask_reg; int /*<<< orphan*/  arm_to_pciea_mask_reg; int /*<<< orphan*/  arm_to_pciea_drbl_reg; } ;
struct mvumi_hba {struct mvumi_hw_regs* regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct mvumi_hba*) ; 

__attribute__((used)) static unsigned char FUNC4(struct mvumi_hba *mhba)
{
	unsigned int tmp;
	struct mvumi_hw_regs *regs = mhba->regs;

	/* clear Door bell */
	tmp = FUNC0(regs->arm_to_pciea_drbl_reg);
	FUNC1(tmp, regs->arm_to_pciea_drbl_reg);

	FUNC1(regs->int_drbl_int_mask, regs->arm_to_pciea_mask_reg);
	tmp = FUNC0(regs->enpointa_mask_reg) | regs->int_dl_cpu2pciea;
	FUNC1(tmp, regs->enpointa_mask_reg);
	FUNC2(100);
	if (FUNC3(mhba))
		return -1;

	return 0;
}