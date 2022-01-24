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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CDNS_UFS_REG_PHY_XCFGD1 ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	u32 data;

	/* Increase RX_Advanced_Min_ActivateTime_Capability */
	data = FUNC1(hba, CDNS_UFS_REG_PHY_XCFGD1);
	data |= FUNC0(24);
	FUNC2(hba, data, CDNS_UFS_REG_PHY_XCFGD1);

	return 0;
}