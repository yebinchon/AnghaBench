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
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct kek_mgmt_req {int new_curidx_ksop; int /*<<< orphan*/  tag; } ;
struct inbound_queue_table {int dummy; } ;

/* Variables and functions */
 int KEK_MGMT_SUBOP_KEYCARDUPDATE ; 
 int /*<<< orphan*/  OPC_INB_KEK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kek_mgmt_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pm8001_hba_info*,struct inbound_queue_table*,int /*<<< orphan*/ ,struct kek_mgmt_req*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pm8001_hba_info *pm8001_ha)
{
	struct kek_mgmt_req payload;
	struct inbound_queue_table *circularQ;
	int rc;
	u32 tag;
	u32 opc = OPC_INB_KEK_MANAGEMENT;

	FUNC1(&payload, 0, sizeof(struct kek_mgmt_req));
	rc = FUNC3(pm8001_ha, &tag);
	if (rc)
		return -1;

	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	payload.tag = FUNC0(tag);
	/* Currently only one key is used. New KEK index is 1.
	 * Current KEK index is 1. Store KEK to NVRAM is 1.
	 */
	payload.new_curidx_ksop = ((1 << 24) | (1 << 16) | (1 << 8) |
					KEK_MGMT_SUBOP_KEYCARDUPDATE);

	rc = FUNC2(pm8001_ha, circularQ, opc, &payload, 0);
	if (rc)
		FUNC4(pm8001_ha, tag);

	return rc;
}