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
typedef  scalar_t__ u32 ;
struct mvumi_hw_regs {int /*<<< orphan*/  arm_to_pciea_msg1; int /*<<< orphan*/  pciea_to_arm_drbl_reg; int /*<<< orphan*/  enpointa_mask_reg; } ;
struct mvumi_hba {TYPE_1__* pdev; struct mvumi_hw_regs* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBL_MU_RESET ; 
 int FAILED ; 
 unsigned long FW_MAX_DELAY ; 
 scalar_t__ HANDSHAKE_READYSTATE ; 
 unsigned long HZ ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct mvumi_hba *mhba)
{
	struct mvumi_hw_regs *regs = mhba->regs;
	u32 tmp;
	unsigned long before;
	before = jiffies;

	FUNC2(0, regs->enpointa_mask_reg);
	tmp = FUNC1(regs->arm_to_pciea_msg1);
	while (tmp != HANDSHAKE_READYSTATE) {
		FUNC2(DRBL_MU_RESET, regs->pciea_to_arm_drbl_reg);
		if (FUNC5(jiffies, before + FW_MAX_DELAY * HZ)) {
			FUNC0(&mhba->pdev->dev,
				"FW reset failed [0x%x].\n", tmp);
			return FAILED;
		}

		FUNC3(500);
		FUNC4();
		tmp = FUNC1(regs->arm_to_pciea_msg1);
	}

	return SUCCESS;
}