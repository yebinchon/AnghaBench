#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct task_status_struct {void* stat; void* resp; void* open_rej_reason; int /*<<< orphan*/  residual; } ;
struct smp_completion_resp {char* _r_a; int /*<<< orphan*/  param; int /*<<< orphan*/  tag; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  smp_resp; } ;
struct sas_task {int task_state_flags; int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;int /*<<< orphan*/  task_state_lock; TYPE_1__ smp_task; int /*<<< orphan*/  dev; int /*<<< orphan*/  lldd_task; struct task_status_struct task_status; } ;
struct pm8001_hba_info {int /*<<< orphan*/  smp_exp_mode; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int /*<<< orphan*/  running_req; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;

/* Variables and functions */
#define  IO_ABORTED 153 
#define  IO_DS_IN_RECOVERY 152 
#define  IO_DS_NON_OPERATIONAL 151 
#define  IO_ERROR_HW_TIMEOUT 150 
#define  IO_ERROR_INTERNAL_SMP_RESOURCE 149 
#define  IO_NO_DEVICE 148 
#define  IO_OPEN_CNX_ERROR_BAD_DESTINATION 147 
#define  IO_OPEN_CNX_ERROR_BREAK 146 
#define  IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED 145 
#define  IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY 144 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS 143 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_NO_DEST 142 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_OPEN_COLLIDE 141 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_OPEN_TMO 140 
#define  IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_PATHWAY_BLOCKED 139 
#define  IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED 138 
#define  IO_OPEN_CNX_ERROR_WRONG_DESTINATION 137 
#define  IO_OPEN_CNX_ERROR_ZONE_VIOLATION 136 
#define  IO_OVERFLOW 135 
#define  IO_PORT_IN_RESET 134 
#define  IO_SUCCESS 133 
#define  IO_XFER_ERROR_BREAK 132 
#define  IO_XFER_ERROR_PHY_NOT_READY 131 
#define  IO_XFER_ERROR_RX_FRAME 130 
#define  IO_XFER_OPEN_RETRY_BACKOFF_THRESHOLD_REACHED 129 
#define  IO_XFER_OPEN_RETRY_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* SAM_STAT_BUSY ; 
 void* SAM_STAT_GOOD ; 
 void* SAS_ABORTED_TASK ; 
 void* SAS_DATA_OVERRUN ; 
 void* SAS_DEV_NO_RESPONSE ; 
 void* SAS_OPEN_REJECT ; 
 void* SAS_OREJ_BAD_DEST ; 
 void* SAS_OREJ_CONN_RATE ; 
 void* SAS_OREJ_RSVD_CONT0 ; 
 void* SAS_OREJ_RSVD_RETRY ; 
 void* SAS_OREJ_UNKNOWN ; 
 void* SAS_OREJ_WRONG_DEST ; 
 void* SAS_PHY_DOWN ; 
 void* SAS_QUEUE_FULL ; 
 int SAS_TASK_AT_INITIATOR ; 
 void* SAS_TASK_COMPLETE ; 
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int SAS_TASK_STATE_PENDING ; 
 int /*<<< orphan*/  SMP_DIRECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,struct pm8001_device*,int const) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct sas_task*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	u32 param, i;
	struct sas_task *t;
	struct pm8001_ccb_info *ccb;
	unsigned long flags;
	u32 status;
	u32 tag;
	struct smp_completion_resp *psmpPayload;
	struct task_status_struct *ts;
	struct pm8001_device *pm8001_dev;
	char *pdma_respaddr = NULL;

	psmpPayload = (struct smp_completion_resp *)(piomb + 4);
	status = FUNC3(psmpPayload->status);
	tag = FUNC3(psmpPayload->tag);

	ccb = &pm8001_ha->ccb_info[tag];
	param = FUNC3(psmpPayload->param);
	t = ccb->task;
	ts = &t->task_status;
	pm8001_dev = ccb->device;
	if (status)
		FUNC0(pm8001_ha,
			FUNC8("smp IO status 0x%x\n", status));
	if (FUNC13(!t || !t->lldd_task || !t->dev))
		return;

	switch (status) {

	case IO_SUCCESS:
		FUNC1(pm8001_ha, FUNC8("IO_SUCCESS\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAM_STAT_GOOD;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		if (pm8001_ha->smp_exp_mode == SMP_DIRECT) {
			FUNC1(pm8001_ha,
				FUNC8("DIRECT RESPONSE Length:%d\n",
						param));
			pdma_respaddr = (char *)(FUNC5(FUNC2
						((u64)FUNC9
						(&t->smp_task.smp_resp))));
			for (i = 0; i < param; i++) {
				*(pdma_respaddr+i) = psmpPayload->_r_a[i];
				FUNC1(pm8001_ha, FUNC8(
					"SMP Byte%d DMA data 0x%x psmp 0x%x\n",
					i, *(pdma_respaddr+i),
					psmpPayload->_r_a[i]));
			}
		}
		break;
	case IO_ABORTED:
		FUNC1(pm8001_ha,
			FUNC8("IO_ABORTED IOMB\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_ABORTED_TASK;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_OVERFLOW:
		FUNC1(pm8001_ha, FUNC8("IO_UNDERFLOW\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DATA_OVERRUN;
		ts->residual = 0;
		if (pm8001_dev)
			pm8001_dev->running_req--;
		break;
	case IO_NO_DEVICE:
		FUNC1(pm8001_ha, FUNC8("IO_NO_DEVICE\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_PHY_DOWN;
		break;
	case IO_ERROR_HW_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC8("IO_ERROR_HW_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAM_STAT_BUSY;
		break;
	case IO_XFER_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC8("IO_XFER_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAM_STAT_BUSY;
		break;
	case IO_XFER_ERROR_PHY_NOT_READY:
		FUNC1(pm8001_ha,
			FUNC8("IO_XFER_ERROR_PHY_NOT_READY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAM_STAT_BUSY;
		break;
	case IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED:
		FUNC1(pm8001_ha,
		FUNC8("IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		break;
	case IO_OPEN_CNX_ERROR_ZONE_VIOLATION:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		break;
	case IO_OPEN_CNX_ERROR_BREAK:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_BREAK\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_CONT0;
		break;
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS:
	case IO_XFER_OPEN_RETRY_BACKOFF_THRESHOLD_REACHED:
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_OPEN_TMO:
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_NO_DEST:
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_OPEN_COLLIDE:
	case IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS_PATHWAY_BLOCKED:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_UNKNOWN;
		FUNC7(pm8001_ha,
				pm8001_dev,
				IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS);
		break;
	case IO_OPEN_CNX_ERROR_BAD_DESTINATION:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_BAD_DEST;
		break;
	case IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED:
		FUNC1(pm8001_ha, FUNC8(\
			"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_CONN_RATE;
		break;
	case IO_OPEN_CNX_ERROR_WRONG_DESTINATION:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
		break;
	case IO_XFER_ERROR_RX_FRAME:
		FUNC1(pm8001_ha,
			FUNC8("IO_XFER_ERROR_RX_FRAME\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	case IO_XFER_OPEN_RETRY_TIMEOUT:
		FUNC1(pm8001_ha,
			FUNC8("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_ERROR_INTERNAL_SMP_RESOURCE:
		FUNC1(pm8001_ha,
			FUNC8("IO_ERROR_INTERNAL_SMP_RESOURCE\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_QUEUE_FULL;
		break;
	case IO_PORT_IN_RESET:
		FUNC1(pm8001_ha,
			FUNC8("IO_PORT_IN_RESET\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_DS_NON_OPERATIONAL:
		FUNC1(pm8001_ha,
			FUNC8("IO_DS_NON_OPERATIONAL\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		break;
	case IO_DS_IN_RECOVERY:
		FUNC1(pm8001_ha,
			FUNC8("IO_DS_IN_RECOVERY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	case IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY:
		FUNC1(pm8001_ha,
			FUNC8("IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_OPEN_REJECT;
		ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
		break;
	default:
		FUNC1(pm8001_ha,
			FUNC8("Unknown status 0x%x\n", status));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAS_DEV_NO_RESPONSE;
		/* not allowed case. Therefore, return failed status */
		break;
	}
	FUNC10(&t->task_state_lock, flags);
	t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
	t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
	t->task_state_flags |= SAS_TASK_STATE_DONE;
	if (FUNC13((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
		FUNC11(&t->task_state_lock, flags);
		FUNC0(pm8001_ha, FUNC8(
			"task 0x%p done with io_status 0x%x resp 0x%x"
			"stat 0x%x but aborted by upper layer!\n",
			t, status, ts->resp, ts->stat));
		FUNC6(pm8001_ha, t, ccb, tag);
	} else {
		FUNC11(&t->task_state_lock, flags);
		FUNC6(pm8001_ha, t, ccb, tag);
		FUNC4();/* in order to force CPU ordering */
		t->task_done(t);
	}
}