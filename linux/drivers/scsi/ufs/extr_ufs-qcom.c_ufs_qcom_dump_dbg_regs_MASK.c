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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_UFS_SYS1CLK_1US ; 
 int /*<<< orphan*/  ufs_qcom_dump_regs_wrapper ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba)
{
	FUNC3(hba, REG_UFS_SYS1CLK_1US, 16 * 4,
			 "HCI Vendor Specific Registers ");

	/* sleep a bit intermittently as we are dumping too much data */
	FUNC0(hba, NULL, ufs_qcom_dump_regs_wrapper);
	FUNC4(1000, 1100);
	FUNC2(hba);
	FUNC4(1000, 1100);
	FUNC1(hba);
	FUNC4(1000, 1100);
}