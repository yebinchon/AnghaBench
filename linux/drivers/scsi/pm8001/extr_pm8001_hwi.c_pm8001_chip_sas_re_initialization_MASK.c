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
typedef  size_t u32 ;
struct sas_re_initialization_req {void* open_reject_cmdretries_data_retries; void* sata_hol_tmo; void* SSAHOLT; void* tag; } ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {size_t ccb_tag; } ;
struct inbound_queue_table {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int ENOMEM ; 
 size_t OPC_INB_SAS_RE_INITIALIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_re_initialization_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pm8001_hba_info*,struct inbound_queue_table*,size_t,struct sas_re_initialization_req*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pm8001_hba_info*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct pm8001_hba_info *pm8001_ha)
{
	struct sas_re_initialization_req payload;
	struct inbound_queue_table *circularQ;
	struct pm8001_ccb_info *ccb;
	int rc;
	u32 tag;
	u32 opc = OPC_INB_SAS_RE_INITIALIZE;
	FUNC1(&payload, 0, sizeof(payload));
	rc = FUNC3(pm8001_ha, &tag);
	if (rc)
		return -ENOMEM;
	ccb = &pm8001_ha->ccb_info[tag];
	ccb->ccb_tag = tag;
	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	payload.tag = FUNC0(tag);
	payload.SSAHOLT = FUNC0(0xd << 25);
	payload.sata_hol_tmo = FUNC0(80);
	payload.open_reject_cmdretries_data_retries = FUNC0(0xff00ff);
	rc = FUNC2(pm8001_ha, circularQ, opc, &payload, 0);
	if (rc)
		FUNC4(pm8001_ha, tag);
	return rc;

}