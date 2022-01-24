#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct scsi_qla_host {int iocb_cnt; int req_q_count; int /*<<< orphan*/  hardware_lock; TYPE_7__* isp_ops; scalar_t__ request_ptr; } ;
struct ql4_task_data {int iocb_req_cnt; scalar_t__ resp_len; int /*<<< orphan*/  resp_dma; int /*<<< orphan*/  req_dma; scalar_t__ req_buffer; scalar_t__ req_len; } ;
struct TYPE_12__ {void* addrHigh; void* addrLow; } ;
struct TYPE_13__ {void* count; TYPE_5__ base; } ;
struct TYPE_10__ {void* addrHigh; void* addrLow; } ;
struct TYPE_11__ {void* count; TYPE_3__ base; } ;
struct TYPE_9__ {int entryCount; int /*<<< orphan*/  systemDefined; int /*<<< orphan*/  entryType; } ;
struct passthru0 {void* control_flags; TYPE_6__ in_dsd; TYPE_4__ out_dsd; void* timeout; void* target; int /*<<< orphan*/  handle; TYPE_2__ hdr; } ;
struct iscsi_task {int /*<<< orphan*/  data_count; int /*<<< orphan*/  data; int /*<<< orphan*/  itt; struct ql4_task_data* dd_data; TYPE_1__* conn; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_hdr {int dummy; } ;
struct ddb_entry {int fw_ddb_index; struct scsi_qla_host* ha; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* queue_iocb ) (struct scsi_qla_host*) ;} ;
struct TYPE_8__ {struct iscsi_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_PASSTHRU0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PT_DEFAULT_TIMEOUT ; 
 int PT_FLAG_ISCSI_PDU ; 
 int PT_FLAG_SEND_BUFFER ; 
 int PT_FLAG_WAIT_4_RESPONSE ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SD_ISCSI_PDU ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct passthru0*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(struct iscsi_task *task)
{
	struct passthru0 *passthru_iocb;
	struct iscsi_session *sess = task->conn->session;
	struct ddb_entry *ddb_entry = sess->dd_data;
	struct scsi_qla_host *ha = ddb_entry->ha;
	struct ql4_task_data *task_data = task->dd_data;
	uint16_t ctrl_flags = 0;
	unsigned long flags;
	int ret = QLA_ERROR;

	FUNC8(&ha->hardware_lock, flags);
	task_data->iocb_req_cnt = 1;
	/* Put the IOCB on the request queue */
	if (!FUNC7(ha, task_data->iocb_req_cnt))
		goto queuing_error;

	passthru_iocb = (struct passthru0 *) ha->request_ptr;

	FUNC5(passthru_iocb, 0, sizeof(struct passthru0));
	passthru_iocb->hdr.entryType = ET_PASSTHRU0;
	passthru_iocb->hdr.systemDefined = SD_ISCSI_PDU;
	passthru_iocb->hdr.entryCount = task_data->iocb_req_cnt;
	passthru_iocb->handle = task->itt;
	passthru_iocb->target = FUNC2(ddb_entry->fw_ddb_index);
	passthru_iocb->timeout = FUNC2(PT_DEFAULT_TIMEOUT);

	/* Setup the out & in DSDs */
	if (task_data->req_len) {
		FUNC4((uint8_t *)task_data->req_buffer +
		       sizeof(struct iscsi_hdr), task->data, task->data_count);
		ctrl_flags |= PT_FLAG_SEND_BUFFER;
		passthru_iocb->out_dsd.base.addrLow =
					FUNC3(FUNC0(task_data->req_dma));
		passthru_iocb->out_dsd.base.addrHigh =
					FUNC3(FUNC1(task_data->req_dma));
		passthru_iocb->out_dsd.count =
					FUNC3(task->data_count +
						    sizeof(struct iscsi_hdr));
	}
	if (task_data->resp_len) {
		passthru_iocb->in_dsd.base.addrLow =
					FUNC3(FUNC0(task_data->resp_dma));
		passthru_iocb->in_dsd.base.addrHigh =
					FUNC3(FUNC1(task_data->resp_dma));
		passthru_iocb->in_dsd.count =
			FUNC3(task_data->resp_len);
	}

	ctrl_flags |= (PT_FLAG_ISCSI_PDU | PT_FLAG_WAIT_4_RESPONSE);
	passthru_iocb->control_flags = FUNC2(ctrl_flags);

	/* Update the request pointer */
	FUNC6(ha);
	FUNC11();

	/* Track IOCB used */
	ha->iocb_cnt += task_data->iocb_req_cnt;
	ha->req_q_count -= task_data->iocb_req_cnt;
	ha->isp_ops->queue_iocb(ha);
	ret = QLA_SUCCESS;

queuing_error:
	FUNC9(&ha->hardware_lock, flags);
	return ret;
}