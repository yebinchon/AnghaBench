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
 int /*<<< orphan*/  REG_UFS_CFG2 ; 
 int REG_UFS_CFG2_CGC_EN_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ufs_hba *hba)
{
	FUNC2(hba,
		FUNC1(hba, REG_UFS_CFG2) | REG_UFS_CFG2_CGC_EN_ALL,
		REG_UFS_CFG2);

	/* Ensure that HW clock gating is enabled before next operations */
	FUNC0();
}