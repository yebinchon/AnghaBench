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
struct set_phy_profile_req {int ppc_phyid; void** reserved; void* tag; } ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct inbound_queue_table {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int OPC_INB_SET_PHY_PROFILE ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int SAS_PHY_ANALOG_SETTINGS_PAGE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct set_phy_profile_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pm8001_hba_info*,struct inbound_queue_table*,int,struct set_phy_profile_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct pm8001_hba_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,int) ; 

void FUNC7(struct pm8001_hba_info *pm8001_ha,
		u32 phy, u32 length, u32 *buf)
{
	u32 tag, opc;
	int rc, i;
	struct set_phy_profile_req payload;
	struct inbound_queue_table *circularQ;

	FUNC2(&payload, 0, sizeof(payload));

	rc = FUNC5(pm8001_ha, &tag);
	if (rc)
		FUNC0(pm8001_ha, FUNC4("Invalid tag"));

	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	opc = OPC_INB_SET_PHY_PROFILE;

	payload.tag = FUNC1(tag);
	payload.ppc_phyid = (((SAS_PHY_ANALOG_SETTINGS_PAGE & 0xF) << 8)
				| (phy & 0xFF));

	for (i = 0; i < length; i++)
		payload.reserved[i] = FUNC1(*(buf + i));

	rc = FUNC3(pm8001_ha, circularQ, opc, &payload, 0);
	if (rc)
		FUNC6(pm8001_ha, tag);

	FUNC0(pm8001_ha,
		FUNC4("PHY %d settings applied", phy));
}