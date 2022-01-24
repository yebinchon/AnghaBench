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
typedef  int /*<<< orphan*/  u32 ;
struct se_cmd {scalar_t__ data_direction; scalar_t__ sam_task_attr; int /*<<< orphan*/ * t_task_cdb; struct pscsi_plugin_task* priv; int /*<<< orphan*/  se_dev; int /*<<< orphan*/  t_data_nents; struct scatterlist* t_data_sg; } ;
struct scatterlist {int dummy; } ;
struct request {int /*<<< orphan*/  timeout; struct se_cmd* end_io_data; int /*<<< orphan*/  end_io; } ;
struct pscsi_plugin_task {int /*<<< orphan*/ * pscsi_cdb; } ;
struct pscsi_dev_virt {TYPE_1__* pdv_sd; } ;
typedef  scalar_t__ sense_reason_t ;
struct TYPE_4__ {int /*<<< orphan*/  retries; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cmd_len; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 struct pscsi_dev_virt* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_RETRY ; 
 int /*<<< orphan*/  PS_TIMEOUT_DISK ; 
 int /*<<< orphan*/  PS_TIMEOUT_OTHER ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
 scalar_t__ TCM_HEAD_TAG ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct pscsi_plugin_task*) ; 
 struct pscsi_plugin_task* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct se_cmd*,struct scatterlist*,int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  pscsi_req_done ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct request*) ; 

__attribute__((used)) static sense_reason_t
FUNC12(struct se_cmd *cmd)
{
	struct scatterlist *sgl = cmd->t_data_sg;
	u32 sgl_nents = cmd->t_data_nents;
	struct pscsi_dev_virt *pdv = FUNC1(cmd->se_dev);
	struct pscsi_plugin_task *pt;
	struct request *req;
	sense_reason_t ret;

	/*
	 * Dynamically alloc cdb space, since it may be larger than
	 * TCM_MAX_COMMAND_SIZE
	 */
	pt = FUNC6(sizeof(*pt) + FUNC10(cmd->t_task_cdb), GFP_KERNEL);
	if (!pt) {
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
	}
	cmd->priv = pt;

	FUNC7(pt->pscsi_cdb, cmd->t_task_cdb,
		FUNC10(cmd->t_task_cdb));

	req = FUNC3(pdv->pdv_sd->request_queue,
			cmd->data_direction == DMA_TO_DEVICE ?
			REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
	if (FUNC0(req)) {
		FUNC8("PSCSI: blk_get_request() failed\n");
		ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
		goto fail;
	}

	if (sgl) {
		ret = FUNC9(cmd, sgl, sgl_nents, req);
		if (ret)
			goto fail_put_request;
	}

	req->end_io = pscsi_req_done;
	req->end_io_data = cmd;
	FUNC11(req)->cmd_len = FUNC10(pt->pscsi_cdb);
	FUNC11(req)->cmd = &pt->pscsi_cdb[0];
	if (pdv->pdv_sd->type == TYPE_DISK ||
	    pdv->pdv_sd->type == TYPE_ZBC)
		req->timeout = PS_TIMEOUT_DISK;
	else
		req->timeout = PS_TIMEOUT_OTHER;
	FUNC11(req)->retries = PS_RETRY;

	FUNC2(pdv->pdv_sd->request_queue, NULL, req,
			(cmd->sam_task_attr == TCM_HEAD_TAG),
			pscsi_req_done);

	return 0;

fail_put_request:
	FUNC4(req);
fail:
	FUNC5(pt);
	return ret;
}