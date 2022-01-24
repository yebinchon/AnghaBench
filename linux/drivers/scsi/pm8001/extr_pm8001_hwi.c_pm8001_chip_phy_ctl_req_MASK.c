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
typedef  int u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct local_phy_ctl_req {void* phyop_phyid; void* tag; } ;
struct inbound_queue_table {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int OPC_INB_LOCAL_PHY_CONTROL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct local_phy_ctl_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pm8001_hba_info*,struct inbound_queue_table*,int,struct local_phy_ctl_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pm8001_hba_info *pm8001_ha,
	u32 phyId, u32 phy_op)
{
	struct local_phy_ctl_req payload;
	struct inbound_queue_table *circularQ;
	int ret;
	u32 opc = OPC_INB_LOCAL_PHY_CONTROL;
	FUNC1(&payload, 0, sizeof(payload));
	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	payload.tag = FUNC0(1);
	payload.phyop_phyid =
		FUNC0(((phy_op & 0xff) << 8) | (phyId & 0x0F));
	ret = FUNC2(pm8001_ha, circularQ, opc, &payload, 0);
	return ret;
}