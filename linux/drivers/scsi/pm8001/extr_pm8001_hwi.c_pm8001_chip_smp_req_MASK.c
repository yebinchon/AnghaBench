#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_3__ {void* long_resp_size; void* long_resp_addr; void* long_req_size; void* long_req_addr; } ;
struct smp_req {void* tag; TYPE_1__ long_smp_req; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {struct scatterlist smp_req; struct scatterlist smp_resp; } ;
struct sas_task {TYPE_2__ smp_task; struct domain_device* dev; } ;
struct pm8001_hba_info {int /*<<< orphan*/  dev; struct inbound_queue_table* inbnd_q_tbl; } ;
struct pm8001_device {int /*<<< orphan*/  device_id; } ;
struct pm8001_ccb_info {int ccb_tag; struct sas_task* task; } ;
struct inbound_queue_table {int dummy; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
typedef  int /*<<< orphan*/  smp_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int OPC_INB_SMP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,struct smp_req*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smp_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct pm8001_hba_info*,struct inbound_queue_table*,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct scatterlist*) ; 
 int FUNC8 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC9(struct pm8001_hba_info *pm8001_ha,
	struct pm8001_ccb_info *ccb)
{
	int elem, rc;
	struct sas_task *task = ccb->task;
	struct domain_device *dev = task->dev;
	struct pm8001_device *pm8001_dev = dev->lldd_dev;
	struct scatterlist *sg_req, *sg_resp;
	u32 req_len, resp_len;
	struct smp_req smp_cmd;
	u32 opc;
	struct inbound_queue_table *circularQ;

	FUNC5(&smp_cmd, 0, sizeof(smp_cmd));
	/*
	 * DMA-map SMP request, response buffers
	 */
	sg_req = &task->smp_task.smp_req;
	elem = FUNC3(pm8001_ha->dev, sg_req, 1, DMA_TO_DEVICE);
	if (!elem)
		return -ENOMEM;
	req_len = FUNC8(sg_req);

	sg_resp = &task->smp_task.smp_resp;
	elem = FUNC3(pm8001_ha->dev, sg_resp, 1, DMA_FROM_DEVICE);
	if (!elem) {
		rc = -ENOMEM;
		goto err_out;
	}
	resp_len = FUNC8(sg_resp);
	/* must be in dwords */
	if ((req_len & 0x3) || (resp_len & 0x3)) {
		rc = -EINVAL;
		goto err_out_2;
	}

	opc = OPC_INB_SMP_REQUEST;
	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	smp_cmd.tag = FUNC1(ccb->ccb_tag);
	smp_cmd.long_smp_req.long_req_addr =
		FUNC2((u64)FUNC7(&task->smp_task.smp_req));
	smp_cmd.long_smp_req.long_req_size =
		FUNC1((u32)FUNC8(&task->smp_task.smp_req)-4);
	smp_cmd.long_smp_req.long_resp_addr =
		FUNC2((u64)FUNC7(&task->smp_task.smp_resp));
	smp_cmd.long_smp_req.long_resp_size =
		FUNC1((u32)FUNC8(&task->smp_task.smp_resp)-4);
	FUNC0(pm8001_dev->device_id, smp_cmd.tag, &smp_cmd);
	rc = FUNC6(pm8001_ha, circularQ, opc,
					(u32 *)&smp_cmd, 0);
	if (rc)
		goto err_out_2;

	return 0;

err_out_2:
	FUNC4(pm8001_ha->dev, &ccb->task->smp_task.smp_resp, 1,
			DMA_FROM_DEVICE);
err_out:
	FUNC4(pm8001_ha->dev, &ccb->task->smp_task.smp_req, 1,
			DMA_TO_DEVICE);
	return rc;
}