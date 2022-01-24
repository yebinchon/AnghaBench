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
struct pm8001_hba_info {TYPE_1__* phy; } ;
struct local_phy_ctl_resp {int /*<<< orphan*/  tag; int /*<<< orphan*/  phyop_phyid; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int reset_success; int /*<<< orphan*/ * enable_completion; } ;

/* Variables and functions */
 scalar_t__ ID_BITS ; 
 scalar_t__ OP_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,scalar_t__) ; 

int FUNC5(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	u32 tag;
	struct local_phy_ctl_resp *pPayload =
		(struct local_phy_ctl_resp *)(piomb + 4);
	u32 status = FUNC2(pPayload->status);
	u32 phy_id = FUNC2(pPayload->phyop_phyid) & ID_BITS;
	u32 phy_op = FUNC2(pPayload->phyop_phyid) & OP_BITS;
	tag = FUNC2(pPayload->tag);
	if (status != 0) {
		FUNC0(pm8001_ha,
			FUNC3("%x phy execute %x phy op failed!\n",
			phy_id, phy_op));
	} else {
		FUNC0(pm8001_ha,
			FUNC3("%x phy execute %x phy op success!\n",
			phy_id, phy_op));
		pm8001_ha->phy[phy_id].reset_success = true;
	}
	if (pm8001_ha->phy[phy_id].enable_completion) {
		FUNC1(pm8001_ha->phy[phy_id].enable_completion);
		pm8001_ha->phy[phy_id].enable_completion = NULL;
	}
	FUNC4(pm8001_ha, tag);
	return 0;
}