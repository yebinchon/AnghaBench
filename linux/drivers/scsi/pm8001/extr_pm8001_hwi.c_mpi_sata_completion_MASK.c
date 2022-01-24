#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
struct task_status_struct {size_t residual; int buf_valid_size; void* stat; void* resp; void* open_rej_reason; scalar_t__ buf; } ;
struct set_dev_bits_fis {int dummy; } ;
struct sata_completion_resp {size_t* sata_resp; int /*<<< orphan*/  param; int /*<<< orphan*/  tag; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/  use_ncq; int /*<<< orphan*/  dma_xfer; } ;
struct sas_task {int task_state_flags; int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  uldd_task; TYPE_3__ ata_task; int /*<<< orphan*/  data_dir; TYPE_2__* dev; struct task_status_struct task_status; int /*<<< orphan*/  lldd_task; } ;
struct pm8001_hba_info {size_t* sas_addr; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int id; size_t attached_phy; int /*<<< orphan*/  running_req; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;
struct pio_setup_fis {int dummy; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_task_resp {size_t frame_len; size_t* ending_fis; } ;
typedef  int /*<<< orphan*/  sata_addr_low ;
typedef  int /*<<< orphan*/  sata_addr_hi ;
struct TYPE_5__ {int /*<<< orphan*/  sas_addr; TYPE_1__* parent; struct pm8001_device* lldd_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
#define  IO_ABORTED 152 
#define  IO_DS_IN_ERROR 151 
#define  IO_DS_IN_RECOVERY 150 
#define  IO_DS_NON_OPERATIONAL 149 
#define  IO_NO_DEVICE 148 
#define  IO_OPEN_CNX_ERROR_BAD_DESTINATION 147 
#define  IO_OPEN_CNX_ERROR_BREAK 146 
#define  IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED 145 
#define  IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY 144 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS 143 
#define  IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED 142 
#define  IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY 141 
#define  IO_OPEN_CNX_ERROR_WRONG_DESTINATION 140 
#define  IO_OPEN_CNX_ERROR_ZONE_VIOLATION 139 
 size_t IO_OVERFLOW ; 
#define  IO_PORT_IN_RESET 138 
#define  IO_SUCCESS 137 
#define  IO_UNDERFLOW 136 
#define  IO_XFER_ERROR_ACK_NAK_TIMEOUT 135 
#define  IO_XFER_ERROR_BREAK 134 
#define  IO_XFER_ERROR_DMA 133 
#define  IO_XFER_ERROR_NAK_RECEIVED 132 
#define  IO_XFER_ERROR_PHY_NOT_READY 131 
#define  IO_XFER_ERROR_REJECTED_NCQ_MODE 130 
#define  IO_XFER_ERROR_SATA_LINK_TIMEOUT 129 
#define  IO_XFER_OPEN_RETRY_TIMEOUT 128 
 int NCQ_ABORT_ALL_FLAG ; 
 int NCQ_READ_LOG_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* SAM_STAT_GOOD ; 
 void* SAS_ABORTED_TASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* SAS_DATA_UNDERRUN ; 
 void* SAS_DEV_NO_RESPONSE ; 
 void* SAS_INTERRUPTED ; 
 void* SAS_NAK_R_ERR ; 
 void* SAS_OPEN_REJECT ; 
 void* SAS_OPEN_TO ; 
 void* SAS_OREJ_BAD_DEST ; 
 void* SAS_OREJ_CONN_RATE ; 
 void* SAS_OREJ_EPROTO ; 
 void* SAS_OREJ_RSVD_CONT0 ; 
 void* SAS_OREJ_RSVD_RETRY ; 
 void* SAS_OREJ_UNKNOWN ; 
 void* SAS_OREJ_WRONG_DEST ; 
 void* SAS_PHY_DOWN ; 
 void* SAS_PROTO_RESPONSE ; 
 void* SAS_QUEUE_FULL ; 
 int SAS_STATUS_BUF_SIZE ; 
 int SAS_TASK_AT_INITIATOR ; 
 void* SAS_TASK_COMPLETE ; 
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int SAS_TASK_STATE_PENDING ; 
 void* SAS_TASK_UNDELIVERED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*,struct pm8001_device*,int const) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct pm8001_hba_info*,struct pm8001_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct sas_task *t;
	struct pm8001_ccb_info *ccb;
	u32 param;
	u32 status;
	u32 tag;
	int i, j;
	u8 sata_addr_low[4];
	u32 temp_sata_addr_low;
	u8 sata_addr_hi[4];
	u32 temp_sata_addr_hi;
	struct sata_completion_resp *psataPayload;
	struct task_status_struct *ts;
	struct ata_task_resp *resp ;
	u32 *sata_resp;
	struct pm8001_device *pm8001_dev;
	unsigned long flags;

	psataPayload = (struct sata_completion_resp *)(piomb + 4);
	status = FUNC4(psataPayload->status);
	tag = FUNC4(psataPayload->tag);

	if (!tag) {
		FUNC0(pm8001_ha,
			FUNC9("tag null\n"));
		return;
	}
	ccb = &pm8001_ha->ccb_info[tag];
	param = FUNC4(psataPayload->param);
	if (ccb) {
		t = ccb->task;
		pm8001_dev = ccb->device;
	} else {
		FUNC0(pm8001_ha,
			FUNC9("ccb null\n"));
		return;
	}

	if (t) {
		if (t->dev && (t->dev->lldd_dev))
			pm8001_dev = t->dev->lldd_dev;
	} else {
		FUNC0(pm8001_ha,
			FUNC9("task null\n"));
		return;
	}

	if ((pm8001_dev && !(pm8001_dev->id & NCQ_READ_LOG_FLAG))
		&& FUNC15(!t || !t->lldd_task || !t->dev)) {
		FUNC0(pm8001_ha,
			FUNC9("task or dev null\n"));
		return;
	}

	ts = &t->task_status;
	if (!ts) {
		FUNC0(pm8001_ha,
			FUNC9("ts null\n"));
		return;
	}
	/* Print sas address of IO failed device */
	if ((status != IO_SUCCESS) && (status != IO_OVERFLOW) &&
		(status != IO_UNDERFLOW)) {
		if (!((t->dev->parent) &&
			(FUNC3(t->dev->parent->dev_type)))) {
			for (i = 0 , j = 4; j <= 7 && i <= 3; i++ , j++)
				sata_addr_low[i] = pm8001_ha->sas_addr[j];
			for (i = 0 , j = 0; j <= 3 && i <= 3; i++ , j++)
				sata_addr_hi[i] = pm8001_ha->sas_addr[j];
			FUNC5(&temp_sata_addr_low, sata_addr_low,
				sizeof(sata_addr_low));
			FUNC5(&temp_sata_addr_hi, sata_addr_hi,
				sizeof(sata_addr_hi));
			temp_sata_addr_hi = (((temp_sata_addr_hi >> 24) & 0xff)
						|((temp_sata_addr_hi << 8) &
						0xff0000) |
						((temp_sata_addr_hi >> 8)
						& 0xff00) |
						((temp_sata_addr_hi << 24) &
						0xff000000));
			temp_sata_addr_low = ((((temp_sata_addr_low >> 24)
						& 0xff) |
						((temp_sata_addr_low << 8)
						& 0xff0000) |
						((temp_sata_addr_low >> 8)
						& 0xff00) |
						((temp_sata_addr_low << 24)
						& 0xff000000)) +
						pm8001_dev->attached_phy +
						0x10);
			FUNC0(pm8001_ha,
				FUNC9("SAS Address of IO Failure Drive:"
				"%08x%08x", temp_sata_addr_hi,
					temp_sata_addr_low));
		} else {
			FUNC0(pm8001_ha,
				FUNC9("SAS Address of IO Failure Drive:"
				"%016llx", FUNC2(t->dev->sas_addr)));
		}
	}
	switch (status) {
	case IO_SUCCESS:
		FUNC1(pm8001_ha, FUNC9("IO_SUCCESS\n"));
		if (param == 0) {
			ts->resp = SAS_TASK_COMPLETE;
			ts->stat = SAM_STAT_GOOD;
			/* check if response is for SEND READ LOG */
			if (pm8001_dev &&
				(pm8001_dev->id & NCQ_READ_LOG_FLAG)) {
				/* set new bit for abort_all */
				pm8001_dev->id |= NCQ_ABORT_ALL_FLAG;
				/* clear bit for read log */
				pm8001_dev->id = pm8001_dev->id & 0x7FFFFFFF;
				FUNC10(pm8001_ha, pm8001_dev);
				/* Free the tag */
				FUNC11(pm8001_ha, tag);
				FUNC12(t);
				return;
			}
		} else {
			u8 len;
			ts->resp = SAS_TASK_COMPLETE;
			ts->stat = SAS_PROTO_RESPONSE;
			ts->residual = param;
			FUNC1(pm8001_ha,
				FUNC9("SAS_PROTO_RESPONSE len = %d\n",
				param));
			sata_resp = &psataPayload->sata_resp[0];
			resp = (struct ata_task_resp *)ts->buf;
			if (t->ata_task.dma_xfer == 0 &&
			    t->data_dir == DMA_FROM_DEVICE) {
				len = sizeof(struct pio_setup_fis);
				FUNC1(pm8001_ha,
				FUNC9("PIO read len = %d\n", len));
			} else if (t->ata_task.use_ncq) {
				len = sizeof(struct set_dev_bits_fis);
				FUNC1(pm8001_ha,
					FUNC9("FPDMA len = %d\n", len));
			} else {
				len = sizeof(struct dev_to_host_fis);
				FUNC1(pm8001_ha,
				FUNC9("other len = %d\n", len));
			}
			if (SAS_STATUS_BUF_SIZE >= sizeof(*resp)) {
				resp->frame_len = len;
				FUNC5(&resp->ending_fis[0], sata_resp, len);
				ts->buf_valid_size = sizeof(*resp);
			} else
				FUNC1(pm8001_ha,
					FUNC9("response to large\n"));
		}
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_ABORTED:
		FUNC1(pm8001_ha,
			FUNC9("IO_ABORTED IOMB Tag\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_ABORTED_TASK;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
		/* following cases are to do cases */
	case IO_UNDERFLOW:
		/* SATA Completion with error */
		FUNC1(pm8001_ha,
			FUNC9("IO_UNDERFLOW param = %d\n", param));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DATA_UNDERRUN;
		ts->residual =  param;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_NO_DEVICE:
		FUNC1(pm8001_ha,
			FUNC9("IO_NO_DEVICE\n"));
		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_PHY_DOWN;
		break;
	case IO_XFER_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_INTERRUPTED;
		break;
	case IO_XFER_ERROR_PHY_NOT_READY:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_PHY_NOT_READY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_PROTOCOL_NOT"
			"_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_EPROTO;
		break;
	case IO_OPEN_CNX_ERROR_ZONE_VIOLATION:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		break;
	case IO_OPEN_CNX_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_CONT0;
		break;
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		if (!t->uldd_task) {
			FUNC8(pm8001_ha,
				pm8001_dev,
				IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS);
			ts->resp = SAS_TASK_UNDELIVERED;
			ts->stat = SAS_QUEUE_FULL;
			FUNC7(pm8001_ha, t, ccb, tag);
			return;
		}
		break;
	case IO_OPEN_CNX_ERROR_BAD_DESTINATION:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_BAD_DEST;
		if (!t->uldd_task) {
			FUNC8(pm8001_ha,
				pm8001_dev,
				IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS);
			ts->resp = SAS_TASK_UNDELIVERED;
			ts->stat = SAS_QUEUE_FULL;
			FUNC7(pm8001_ha, t, ccb, tag);
			return;
		}
		break;
	case IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_CONNECTION_RATE_"
			"NOT_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_CONN_RATE;
		break;
	case IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_STP_RESOURCES"
			"_BUSY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		if (!t->uldd_task) {
			FUNC8(pm8001_ha,
				pm8001_dev,
				IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY);
			ts->resp = SAS_TASK_UNDELIVERED;
			ts->stat = SAS_QUEUE_FULL;
			FUNC7(pm8001_ha, t, ccb, tag);
			return;
		}
		break;
	case IO_OPEN_CNX_ERROR_WRONG_DESTINATION:
		FUNC1(pm8001_ha,
		       FUNC9("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
		break;
	case IO_XFER_ERROR_NAK_RECEIVED:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_NAK_RECEIVED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_NAK_R_ERR;
		break;
	case IO_XFER_ERROR_ACK_NAK_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_ACK_NAK_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_NAK_R_ERR;
		break;
	case IO_XFER_ERROR_DMA:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_DMA\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_ABORTED_TASK;
		break;
	case IO_XFER_ERROR_SATA_LINK_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_SATA_LINK_TIMEOUT\n"));
		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	case IO_XFER_ERROR_REJECTED_NCQ_MODE:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_ERROR_REJECTED_NCQ_MODE\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DATA_UNDERRUN;
		break;
	case IO_XFER_OPEN_RETRY_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC9("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_TO;
		break;
	case IO_PORT_IN_RESET:
		FUNC1(pm8001_ha,
			FUNC9("IO_PORT_IN_RESET\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	case IO_DS_NON_OPERATIONAL:
		FUNC1(pm8001_ha,
			FUNC9("IO_DS_NON_OPERATIONAL\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		if (!t->uldd_task) {
			FUNC8(pm8001_ha, pm8001_dev,
				    IO_DS_NON_OPERATIONAL);
			ts->resp = SAS_TASK_UNDELIVERED;
			ts->stat = SAS_QUEUE_FULL;
			FUNC7(pm8001_ha, t, ccb, tag);
			return;
		}
		break;
	case IO_DS_IN_RECOVERY:
		FUNC1(pm8001_ha,
			FUNC9("  IO_DS_IN_RECOVERY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	case IO_DS_IN_ERROR:
		FUNC1(pm8001_ha,
			FUNC9("IO_DS_IN_ERROR\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		if (!t->uldd_task) {
			FUNC8(pm8001_ha, pm8001_dev,
				    IO_DS_IN_ERROR);
			ts->resp = SAS_TASK_UNDELIVERED;
			ts->stat = SAS_QUEUE_FULL;
			FUNC7(pm8001_ha, t, ccb, tag);
			return;
		}
		break;
	case IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY:
		FUNC1(pm8001_ha,
			FUNC9("IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	default:
		FUNC1(pm8001_ha,
			FUNC9("Unknown status 0x%x\n", status));
		/* not allowed case. Therefore, return failed status */
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	}
	FUNC13(&t->task_state_lock, flags);
	t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
	t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
	t->task_state_flags |= SAS_TASK_STATE_DONE;
	if (FUNC15((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
		FUNC14(&t->task_state_lock, flags);
		FUNC0(pm8001_ha,
			FUNC9("task 0x%p done with io_status 0x%x"
			" resp 0x%x stat 0x%x but aborted by upper layer!\n",
			t, status, ts->resp, ts->stat));
		FUNC6(pm8001_ha, t, ccb, tag);
	} else {
		FUNC14(&t->task_state_lock, flags);
		FUNC7(pm8001_ha, t, ccb, tag);
	}
}