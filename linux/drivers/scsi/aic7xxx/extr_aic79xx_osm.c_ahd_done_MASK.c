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
typedef  scalar_t__ uint32_t ;
typedef  size_t u_int ;
struct scsi_cmnd {int result; scalar_t__ underflow; size_t cmd_len; int /*<<< orphan*/  device; int /*<<< orphan*/ * cmnd; scalar_t__* sense_buffer; } ;
struct scb {int flags; struct scsi_cmnd* io_ctx; TYPE_1__* platform_data; } ;
struct ahd_softc {TYPE_2__* platform_data; } ;
struct ahd_linux_device {scalar_t__ active; int openings; scalar_t__ tag_success_count; scalar_t__ maxtags; scalar_t__ commands_since_idle_or_otag; int /*<<< orphan*/  qfrozen; } ;
struct TYPE_4__ {scalar_t__ eh_done; } ;
struct TYPE_3__ {struct ahd_linux_device* dev; } ;

/* Variables and functions */
 int AHD_SHOW_MISC ; 
 scalar_t__ AHD_TAG_SUCCESS_INTERVAL ; 
 scalar_t__ CAM_BDR_SENT ; 
 scalar_t__ CAM_CMD_TIMEOUT ; 
 scalar_t__ CAM_DATA_RUN_ERR ; 
 int CAM_DEV_QFRZN ; 
 scalar_t__ CAM_REQ_ABORTED ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_INPROG ; 
 scalar_t__ CAM_SCSI_STATUS_ERROR ; 
 scalar_t__ CAM_UNCOR_PARITY ; 
 int /*<<< orphan*/  FUNC0 (struct scb*,int /*<<< orphan*/ ) ; 
 int SCB_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 int SCB_RECOVERY_SCB ; 
 int SCB_TRANSMISSION_ERROR ; 
 scalar_t__ SCSI_STATUS_QUEUE_FULL ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC4 (struct scb*) ; 
 scalar_t__ FUNC5 (struct scb*) ; 
 scalar_t__ FUNC6 (struct scb*) ; 
 scalar_t__ FUNC7 (struct scb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,struct scb*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct scb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

void
FUNC16(struct ahd_softc *ahd, struct scb *scb)
{
	struct scsi_cmnd *cmd;
	struct	  ahd_linux_device *dev;

	if ((scb->flags & SCB_ACTIVE) == 0) {
		FUNC15("SCB %d done'd twice\n", FUNC1(scb));
		FUNC2(ahd);
		FUNC14("Stopping for safety");
	}
	FUNC0(scb, pending_links);
	cmd = scb->io_ctx;
	dev = scb->platform_data->dev;
	dev->active--;
	dev->openings++;
	if ((cmd->result & (CAM_DEV_QFRZN << 16)) != 0) {
		cmd->result &= ~(CAM_DEV_QFRZN << 16);
		dev->qfrozen--;
	}
	FUNC10(ahd, scb);

	/*
	 * Guard against stale sense data.
	 * The Linux mid-layer assumes that sense
	 * was retrieved anytime the first byte of
	 * the sense buffer looks "sane".
	 */
	cmd->sense_buffer[0] = 0;
	if (FUNC6(scb) == CAM_REQ_INPROG) {
		uint32_t amount_xferred;

		amount_xferred =
		    FUNC7(scb) - FUNC4(scb);
		if ((scb->flags & SCB_TRANSMISSION_ERROR) != 0) {
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MISC) != 0) {
				ahd_print_path(ahd, scb);
				printk("Set CAM_UNCOR_PARITY\n");
			}
#endif
			FUNC12(scb, CAM_UNCOR_PARITY);
#ifdef AHD_REPORT_UNDERFLOWS
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

			ahd_print_path(ahd, scb);
			printk("CDB:");
			for (i = 0; i < scb->io_ctx->cmd_len; i++)
				printk(" 0x%x", scb->io_ctx->cmnd[i]);
			printk("\n");
			ahd_print_path(ahd, scb);
			printk("Saw underflow (%ld of %ld bytes). "
			       "Treated as error\n",
				ahd_get_residual(scb),
				ahd_get_transfer_length(scb));
			ahd_set_transaction_status(scb, CAM_DATA_RUN_ERR);
#endif
		} else {
			FUNC12(scb, CAM_REQ_CMP);
		}
	} else if (FUNC6(scb) == CAM_SCSI_STATUS_ERROR) {
		FUNC8(ahd, cmd->device, scb);
	}

	if (dev->openings == 1
	 && FUNC6(scb) == CAM_REQ_CMP
	 && FUNC5(scb) != SCSI_STATUS_QUEUE_FULL)
		dev->tag_success_count++;
	/*
	 * Some devices deal with temporary internal resource
	 * shortages by returning queue full.  When the queue
	 * full occurrs, we throttle back.  Slowly try to get
	 * back to our previous queue depth.
	 */
	if ((dev->openings + dev->active) < dev->maxtags
	 && dev->tag_success_count > AHD_TAG_SUCCESS_INTERVAL) {
		dev->tag_success_count = 0;
		dev->openings++;
	}

	if (dev->active == 0)
		dev->commands_since_idle_or_otag = 0;

	if ((scb->flags & SCB_RECOVERY_SCB) != 0) {
		FUNC15("Recovery SCB completes\n");
		if (FUNC6(scb) == CAM_BDR_SENT
		 || FUNC6(scb) == CAM_REQ_ABORTED)
			FUNC12(scb, CAM_CMD_TIMEOUT);

		if (ahd->platform_data->eh_done)
			FUNC13(ahd->platform_data->eh_done);
	}

	FUNC3(ahd, scb);
	FUNC9(ahd, cmd);
}