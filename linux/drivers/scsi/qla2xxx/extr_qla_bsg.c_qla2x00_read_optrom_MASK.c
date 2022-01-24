#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int /*<<< orphan*/  optrom_mutex; int /*<<< orphan*/  optrom_state; int /*<<< orphan*/ * optrom_buffer; int /*<<< orphan*/  optrom_region_size; int /*<<< orphan*/  optrom_region_start; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct fc_bsg_reply {int /*<<< orphan*/  reply_payload_rcv_len; int /*<<< orphan*/  result; } ;
struct TYPE_10__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {TYPE_3__ reply_payload; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* read_optrom ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DID_OK ; 
 int EBUSY ; 
 int /*<<< orphan*/  QLA_SWAITING ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bsg_job*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct bsg_job *bsg_job)
{
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	struct Scsi_Host *host = FUNC1(bsg_job);
	scsi_qla_host_t *vha = FUNC6(host);
	struct qla_hw_data *ha = vha->hw;
	int rval = 0;

	if (ha->flags.nic_core_reset_hdlr_active)
		return -EBUSY;

	FUNC2(&ha->optrom_mutex);
	rval = FUNC4(bsg_job, vha, 0);
	if (rval) {
		FUNC3(&ha->optrom_mutex);
		return rval;
	}

	ha->isp_ops->read_optrom(vha, ha->optrom_buffer,
	    ha->optrom_region_start, ha->optrom_region_size);

	FUNC5(bsg_job->reply_payload.sg_list,
	    bsg_job->reply_payload.sg_cnt, ha->optrom_buffer,
	    ha->optrom_region_size);

	bsg_reply->reply_payload_rcv_len = ha->optrom_region_size;
	bsg_reply->result = DID_OK;
	FUNC8(ha->optrom_buffer);
	ha->optrom_buffer = NULL;
	ha->optrom_state = QLA_SWAITING;
	FUNC3(&ha->optrom_mutex);
	FUNC0(bsg_job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);
	return rval;
}