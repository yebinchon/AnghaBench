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
struct ufs_hba {int auto_bkops_enabled; int /*<<< orphan*/  ee_ctrl_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_EE_URGENT_BKOPS ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 scalar_t__ FUNC2 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC3(struct ufs_hba *hba)
{
	if (FUNC2(hba)) {
		hba->auto_bkops_enabled = false;
		hba->ee_ctrl_mask |= MASK_EE_URGENT_BKOPS;
		FUNC1(hba);
	} else {
		hba->auto_bkops_enabled = true;
		hba->ee_ctrl_mask &= ~MASK_EE_URGENT_BKOPS;
		FUNC0(hba);
	}
}