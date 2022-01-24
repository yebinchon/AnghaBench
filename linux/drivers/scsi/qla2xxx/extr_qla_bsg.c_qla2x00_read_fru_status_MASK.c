#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  option; int /*<<< orphan*/  offset; int /*<<< orphan*/  device; } ;
struct qla_status_reg {int /*<<< orphan*/  status_reg; TYPE_2__ field_address; } ;
struct qla_hw_data {int /*<<< orphan*/  s_dma_pool; } ;
struct TYPE_12__ {scalar_t__* vendor_rsp; } ;
struct TYPE_13__ {TYPE_4__ vendor_reply; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; TYPE_5__ reply_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_9__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {int reply_len; TYPE_3__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_14__ {struct qla_hw_data* hw; } ;
typedef  TYPE_6__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DID_OK ; 
 int DMA_POOL_SIZE ; 
 scalar_t__ EXT_STATUS_MAILBOX ; 
 scalar_t__ EXT_STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct bsg_job*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_status_reg*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_status_reg*,int) ; 
 TYPE_6__* FUNC7 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC8(struct bsg_job *bsg_job)
{
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	struct Scsi_Host *host = FUNC3(bsg_job);
	scsi_qla_host_t *vha = FUNC7(host);
	struct qla_hw_data *ha = vha->hw;
	int rval = 0;
	uint8_t bsg[DMA_POOL_SIZE];
	struct qla_status_reg *sr = (void *)bsg;
	dma_addr_t sfp_dma;
	uint8_t *sfp = FUNC1(ha->s_dma_pool, GFP_KERNEL, &sfp_dma);

	if (!sfp) {
		bsg_reply->reply_data.vendor_reply.vendor_rsp[0] =
		    EXT_STATUS_NO_MEMORY;
		goto done;
	}

	FUNC6(bsg_job->request_payload.sg_list,
	    bsg_job->request_payload.sg_cnt, sr, sizeof(*sr));

	rval = FUNC4(vha, sfp_dma, sfp,
	    sr->field_address.device, sr->field_address.offset,
	    sizeof(sr->status_reg), sr->field_address.option);
	sr->status_reg = *sfp;

	if (rval) {
		bsg_reply->reply_data.vendor_reply.vendor_rsp[0] =
		    EXT_STATUS_MAILBOX;
		goto dealloc;
	}

	FUNC5(bsg_job->reply_payload.sg_list,
	    bsg_job->reply_payload.sg_cnt, sr, sizeof(*sr));

	bsg_reply->reply_data.vendor_reply.vendor_rsp[0] = 0;

dealloc:
	FUNC2(ha->s_dma_pool, sfp, sfp_dma);

done:
	bsg_job->reply_len = sizeof(struct fc_bsg_reply);
	bsg_reply->reply_payload_rcv_len = sizeof(*sr);
	bsg_reply->result = DID_OK << 16;
	FUNC0(bsg_job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);

	return 0;
}