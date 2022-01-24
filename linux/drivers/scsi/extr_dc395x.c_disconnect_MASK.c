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
typedef  int u8 ;
struct ScsiReqBlk {int cmd; int state; int /*<<< orphan*/  list; void* target_status; int /*<<< orphan*/  retry_count; int /*<<< orphan*/  scsi_phase; } ;
struct DeviceCtlBlk {struct ScsiReqBlk* active_srb; int /*<<< orphan*/  srb_waiting_list; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {int delay_time; } ;
struct AdapterCtlBlk {scalar_t__ scan_devices; void* last_reset; struct DeviceCtlBlk* active_dcb; TYPE_1__ eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_DEV_ ; 
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DBG_KG ; 
 scalar_t__ DC395x_MAX_RETRIES ; 
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DID_ABORT ; 
 int /*<<< orphan*/  DO_HWRESELECT ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PH_BUS_FREE ; 
 void* SCSI_STAT_SEL_TIMEOUT ; 
 int SRB_ABORT_SENT ; 
 int SRB_COMPLETED ; 
 int SRB_DISCONNECT ; 
 int SRB_FREE ; 
 int SRB_MSGOUT ; 
 int SRB_READY ; 
 int SRB_START_ ; 
 int SRB_UNEXPECT_RESEL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_SIGNAL ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC11 (struct AdapterCtlBlk*,int) ; 

__attribute__((used)) static void FUNC12(struct AdapterCtlBlk *acb)
{
	struct DeviceCtlBlk *dcb = acb->active_dcb;
	struct ScsiReqBlk *srb;

	if (!dcb) {
		FUNC5(KERN_ERR, "disconnect: No such device\n");
		FUNC9(500);
		/* Suspend queue for a while */
		acb->last_reset =
		    jiffies + HZ / 2 +
		    HZ * acb->eeprom.delay_time;
		FUNC2(acb, "disconnectEx");
		FUNC1(acb, TRM_S1040_SCSI_CONTROL, DO_HWRESELECT);
		return;
	}
	srb = dcb->active_srb;
	acb->active_dcb = NULL;
	FUNC4(DBG_0, "disconnect: (0x%p)\n", srb->cmd);

	srb->scsi_phase = PH_BUS_FREE;	/* initial phase */
	FUNC2(acb, "disconnect");
	FUNC1(acb, TRM_S1040_SCSI_CONTROL, DO_HWRESELECT);
	if (srb->state & SRB_UNEXPECT_RESEL) {
		FUNC5(KERN_ERR,
			"disconnect: Unexpected reselection <%02i-%i>\n",
			dcb->target_id, dcb->target_lun);
		srb->state = 0;
		FUNC10(acb);
	} else if (srb->state & SRB_ABORT_SENT) {
		dcb->flag &= ~ABORT_DEV_;
		acb->last_reset = jiffies + HZ / 2 + 1;
		FUNC5(KERN_ERR, "disconnect: SRB_ABORT_SENT\n");
		FUNC3(acb, DID_ABORT, srb->cmd, 1);
		FUNC10(acb);
	} else {
		if ((srb->state & (SRB_START_ + SRB_MSGOUT))
		    || !(srb->
			 state & (SRB_DISCONNECT + SRB_COMPLETED))) {
			/*
			 * Selection time out 
			 * SRB_START_ || SRB_MSGOUT || (!SRB_DISCONNECT && !SRB_COMPLETED)
			 */
			/* Unexp. Disc / Sel Timeout */
			if (srb->state != SRB_START_
			    && srb->state != SRB_MSGOUT) {
				srb->state = SRB_READY;
				FUNC5(KERN_DEBUG,
					"disconnect: (0x%p) Unexpected\n",
					srb->cmd);
				srb->target_status = SCSI_STAT_SEL_TIMEOUT;
				goto disc1;
			} else {
				/* Normal selection timeout */
				FUNC4(DBG_KG, "disconnect: (0x%p) "
					"<%02i-%i> SelTO\n", srb->cmd,
					dcb->target_id, dcb->target_lun);
				if (srb->retry_count++ > DC395x_MAX_RETRIES
				    || acb->scan_devices) {
					srb->target_status =
					    SCSI_STAT_SEL_TIMEOUT;
					goto disc1;
				}
				FUNC6(dcb, srb);
				FUNC7(&srb->list, &dcb->srb_waiting_list);
				FUNC4(DBG_KG,
					"disconnect: (0x%p) Retry\n",
					srb->cmd);
				FUNC11(acb, HZ / 20);
			}
		} else if (srb->state & SRB_DISCONNECT) {
			u8 bval = FUNC0(acb, TRM_S1040_SCSI_SIGNAL);
			/*
			 * SRB_DISCONNECT (This is what we expect!)
			 */
			if (bval & 0x40) {
				FUNC4(DBG_0, "disconnect: SCSI bus stat "
					" 0x%02x: ACK set! Other controllers?\n",
					bval);
				/* It could come from another initiator, therefore don't do much ! */
			} else
				FUNC10(acb);
		} else if (srb->state & SRB_COMPLETED) {
		      disc1:
			/*
			 ** SRB_COMPLETED
			 */
			FUNC6(dcb, srb);
			dcb->active_srb = NULL;
			srb->state = SRB_FREE;
			FUNC8(acb, dcb, srb);
		}
	}
}