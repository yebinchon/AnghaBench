#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  size_t u_int ;
struct scsi_cmnd {int result; scalar_t__ underflow; size_t cmd_len; int /*<<< orphan*/  device; int /*<<< orphan*/ * cmnd; scalar_t__* sense_buffer; } ;
struct scb_tailq {int dummy; } ;
struct scb {int flags; struct scsi_cmnd* io_ctx; TYPE_2__* platform_data; TYPE_1__* hscb; } ;
struct ahc_softc {TYPE_3__* platform_data; struct scb_tailq* untagged_queues; } ;
struct ahc_linux_device {scalar_t__ active; int openings; scalar_t__ tag_success_count; scalar_t__ maxtags; scalar_t__ commands_since_idle_or_otag; int /*<<< orphan*/  qfrozen; } ;
struct TYPE_8__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_7__ {scalar_t__ eh_done; } ;
struct TYPE_6__ {struct ahc_linux_device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int AHC_SHOW_MISC ; 
 scalar_t__ AHC_TAG_SUCCESS_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CAM_BDR_SENT ; 
 scalar_t__ CAM_CMD_TIMEOUT ; 
 scalar_t__ CAM_DATA_RUN_ERR ; 
 int CAM_DEV_QFRZN ; 
 scalar_t__ CAM_REQ_ABORTED ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_INPROG ; 
 scalar_t__ CAM_SCSI_STATUS_ERROR ; 
 scalar_t__ CAM_UNCOR_PARITY ; 
 int /*<<< orphan*/  FUNC1 (struct scb*,int /*<<< orphan*/ ) ; 
 int SCB_ACTIVE ; 
 int FUNC2 (struct ahc_softc*,struct scb*) ; 
 int SCB_RECOVERY_SCB ; 
 int SCB_TRANSMISSION_ERROR ; 
 int SCB_UNTAGGEDQ ; 
 scalar_t__ SCSI_STATUS_QUEUE_FULL ; 
 int /*<<< orphan*/  FUNC3 (struct scb_tailq*) ; 
 int /*<<< orphan*/  FUNC4 (struct scb_tailq*,struct scb*,int /*<<< orphan*/ ) ; 
 int ahc_debug ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,struct scb*) ; 
 scalar_t__ FUNC7 (struct scb*) ; 
 scalar_t__ FUNC8 (struct scb*) ; 
 scalar_t__ FUNC9 (struct scb*) ; 
 scalar_t__ FUNC10 (struct scb*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahc_softc*,int /*<<< orphan*/ ,struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC15 (struct scb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 TYPE_4__ links ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

void
FUNC19(struct ahc_softc *ahc, struct scb *scb)
{
	struct scsi_cmnd *cmd;
	struct	   ahc_linux_device *dev;

	FUNC1(scb, pending_links);
	if ((scb->flags & SCB_UNTAGGEDQ) != 0) {
		struct scb_tailq *untagged_q;
		int target_offset;

		target_offset = FUNC2(ahc, scb);
		untagged_q = &(ahc->untagged_queues[target_offset]);
		FUNC4(untagged_q, scb, links.tqe);
		FUNC0(!FUNC3(untagged_q));
	} else if ((scb->flags & SCB_ACTIVE) == 0) {
		/*
		 * Transactions aborted from the untagged queue may
		 * not have been dispatched to the controller, so
		 * only check the SCB_ACTIVE flag for tagged transactions.
		 */
		FUNC18("SCB %d done'd twice\n", scb->hscb->tag);
		FUNC5(ahc);
		FUNC17("Stopping for safety");
	}
	cmd = scb->io_ctx;
	dev = scb->platform_data->dev;
	dev->active--;
	dev->openings++;
	if ((cmd->result & (CAM_DEV_QFRZN << 16)) != 0) {
		cmd->result &= ~(CAM_DEV_QFRZN << 16);
		dev->qfrozen--;
	}
	FUNC13(ahc, scb);

	/*
	 * Guard against stale sense data.
	 * The Linux mid-layer assumes that sense
	 * was retrieved anytime the first byte of
	 * the sense buffer looks "sane".
	 */
	cmd->sense_buffer[0] = 0;
	if (FUNC9(scb) == CAM_REQ_INPROG) {
		uint32_t amount_xferred;

		amount_xferred =
		    FUNC10(scb) - FUNC7(scb);
		if ((scb->flags & SCB_TRANSMISSION_ERROR) != 0) {
#ifdef AHC_DEBUG
			if ((ahc_debug & AHC_SHOW_MISC) != 0) {
				ahc_print_path(ahc, scb);
				printk("Set CAM_UNCOR_PARITY\n");
			}
#endif
			FUNC15(scb, CAM_UNCOR_PARITY);
#ifdef AHC_REPORT_UNDERFLOWS
		/*
		 * This code is disabled by default as some
		 * clients of the SCSI system do not properly
		 * initialize the underflow parameter.  This
		 * results in spurious termination of commands
		 * that complete as expected (e.g. underflow is
		 * allowed as command can return variable amounts
		 * of data.
		 */
		} else if (amount_xferred < scb->io_ctx->underflow) {
			u_int i;

			ahc_print_path(ahc, scb);
			printk("CDB:");
			for (i = 0; i < scb->io_ctx->cmd_len; i++)
				printk(" 0x%x", scb->io_ctx->cmnd[i]);
			printk("\n");
			ahc_print_path(ahc, scb);
			printk("Saw underflow (%ld of %ld bytes). "
			       "Treated as error\n",
				ahc_get_residual(scb),
				ahc_get_transfer_length(scb));
			ahc_set_transaction_status(scb, CAM_DATA_RUN_ERR);
#endif
		} else {
			FUNC15(scb, CAM_REQ_CMP);
		}
	} else if (FUNC9(scb) == CAM_SCSI_STATUS_ERROR) {
		FUNC11(ahc, cmd->device, scb);
	}

	if (dev->openings == 1
	 && FUNC9(scb) == CAM_REQ_CMP
	 && FUNC8(scb) != SCSI_STATUS_QUEUE_FULL)
		dev->tag_success_count++;
	/*
	 * Some devices deal with temporary internal resource
	 * shortages by returning queue full.  When the queue
	 * full occurrs, we throttle back.  Slowly try to get
	 * back to our previous queue depth.
	 */
	if ((dev->openings + dev->active) < dev->maxtags
	 && dev->tag_success_count > AHC_TAG_SUCCESS_INTERVAL) {
		dev->tag_success_count = 0;
		dev->openings++;
	}

	if (dev->active == 0)
		dev->commands_since_idle_or_otag = 0;

	if ((scb->flags & SCB_RECOVERY_SCB) != 0) {
		FUNC18("Recovery SCB completes\n");
		if (FUNC9(scb) == CAM_BDR_SENT
		 || FUNC9(scb) == CAM_REQ_ABORTED)
			FUNC15(scb, CAM_CMD_TIMEOUT);

		if (ahc->platform_data->eh_done)
			FUNC16(ahc->platform_data->eh_done);
	}

	FUNC6(ahc, scb);
	FUNC12(ahc, cmd);
}