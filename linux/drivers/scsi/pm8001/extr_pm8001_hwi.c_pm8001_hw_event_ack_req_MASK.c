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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct inbound_queue_table {int dummy; } ;
struct hw_event_ack_req {void* param1; void* param0; void* sea_phyid_portid; void* tag; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 size_t OPC_INB_SAS_HW_EVENT_ACK ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,struct inbound_queue_table*,size_t,struct hw_event_ack_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pm8001_hba_info *pm8001_ha,
	u32 Qnum, u32 SEA, u32 port_id, u32 phyId, u32 param0, u32 param1)
{
	struct hw_event_ack_req	 payload;
	u32 opc = OPC_INB_SAS_HW_EVENT_ACK;

	struct inbound_queue_table *circularQ;

	FUNC1((u8 *)&payload, 0, sizeof(payload));
	circularQ = &pm8001_ha->inbnd_q_tbl[Qnum];
	payload.tag = FUNC0(1);
	payload.sea_phyid_portid = FUNC0(((SEA & 0xFFFF) << 8) |
		((phyId & 0x0F) << 4) | (port_id & 0x0F));
	payload.param0 = FUNC0(param0);
	payload.param1 = FUNC0(param1);
	FUNC2(pm8001_ha, circularQ, opc, &payload, 0);
}