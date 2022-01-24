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
struct mvumi_hba {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  arm_to_pciea_drbl_reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct mvumi_hba *mhba)
{
	unsigned int status;

	status = FUNC0(mhba->regs->arm_to_pciea_drbl_reg);
	if (status)
		FUNC1(status, mhba->regs->arm_to_pciea_drbl_reg);
	return status;
}