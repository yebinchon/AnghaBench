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
struct scsi_status_iu_header {int status; int flags; int /*<<< orphan*/  pkt_failures_length; int /*<<< orphan*/  sense_length; } ;
struct scsi_sense {int byte2; int /*<<< orphan*/  control; int /*<<< orphan*/  length; int /*<<< orphan*/ * unused; int /*<<< orphan*/  opcode; } ;
struct scb {int flags; int /*<<< orphan*/  sg_count; struct ahd_dma_seg* sg_list; scalar_t__ sense_data; struct hardware_scb* hscb; } ;
struct TYPE_5__ {scalar_t__ cdb; } ;
struct TYPE_4__ {int scsi_status; } ;
struct TYPE_6__ {TYPE_2__ idata; TYPE_1__ istatus; } ;
struct hardware_scb {int cdb_len; int /*<<< orphan*/  control; TYPE_3__ shared_data; } ;
struct ahd_transinfo {int /*<<< orphan*/  protocol_version; } ;
struct ahd_tmode_tstate {int auto_negotiate; } ;
struct ahd_softc {int /*<<< orphan*/  qfreeze_cnt; } ;
struct ahd_initiator_tinfo {struct ahd_transinfo curr; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_devinfo {int target_mask; int /*<<< orphan*/  target; int /*<<< orphan*/  our_scsiid; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_NEG_IF_NON_ASYNC ; 
 int AHD_SHOW_SENSE ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  CAM_AUTOSENSE_FAIL ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  KERNEL_QFREEZE_COUNT ; 
 int /*<<< orphan*/  MK_MESSAGE ; 
 int /*<<< orphan*/  REQUEST_SENSE ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int SCB_ABORT ; 
 int SCB_AUTO_NEGOTIATE ; 
 int SCB_DEVICE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct scb*) ; 
 int FUNC1 (struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct scb*) ; 
 int SCB_NEGOTIATE ; 
 int SCB_PKT_SENSE ; 
 int SCB_SENSE ; 
 int /*<<< orphan*/  SCSI_REV_2 ; 
#define  SCSI_STATUS_CHECK_COND 137 
#define  SCSI_STATUS_CMD_TERMINATED 136 
#define  SCSI_STATUS_OK 135 
#define  SIU_PFC_CIU_FIELDS_INVALID 134 
#define  SIU_PFC_ILLEGAL_REQUEST 133 
#define  SIU_PFC_INVALID_TYPE_CODE 132 
#define  SIU_PFC_NONE 131 
#define  SIU_PFC_TMF_FAILED 130 
#define  SIU_PFC_TMF_NOT_SUPPORTED 129 
 int /*<<< orphan*/  FUNC5 (struct scsi_status_iu_header*) ; 
 int SIU_RSPVALID ; 
 int SIU_SNSVALID ; 
#define  STATUS_PKT_SENSE 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct scb*) ; 
 struct ahd_initiator_tinfo* FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC10 (struct scb*) ; 
 int /*<<< orphan*/  FUNC11 (struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct scb*) ; 
 scalar_t__ FUNC15 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct scb*) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC22 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ahd_softc*,struct scb*) ; 
 struct ahd_dma_seg* FUNC25 (struct ahd_softc*,struct scb*,struct ahd_dma_seg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ahd_softc*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC28 (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC30 (char*,...) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC32(struct ahd_softc *ahd, struct scb *scb)
{
	struct	hardware_scb *hscb;
	int	paused;

	/*
	 * The sequencer freezes its select-out queue
	 * anytime a SCSI status error occurs.  We must
	 * handle the error and increment our qfreeze count
	 * to allow the sequencer to continue.  We don't
	 * bother clearing critical sections here since all
	 * operations are on data structures that the sequencer
	 * is not touching once the queue is frozen.
	 */
	hscb = scb->hscb; 

	if (FUNC15(ahd)) {
		paused = 1;
	} else {
		paused = 0;
		FUNC18(ahd);
	}

	/* Freeze the queue until the client sees the error. */
	FUNC9(ahd, scb);
	FUNC10(scb);
	ahd->qfreeze_cnt++;
	FUNC17(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);

	if (paused == 0)
		FUNC27(ahd);

	/* Don't want to clobber the original sense code */
	if ((scb->flags & SCB_SENSE) != 0) {
		/*
		 * Clear the SCB_SENSE Flag and perform
		 * a normal command completion.
		 */
		scb->flags &= ~SCB_SENSE;
		FUNC23(scb, CAM_AUTOSENSE_FAIL);
		FUNC7(ahd, scb);
		return;
	}
	FUNC23(scb, CAM_SCSI_STATUS_ERROR);
	FUNC22(scb, hscb->shared_data.istatus.scsi_status);
	switch (hscb->shared_data.istatus.scsi_status) {
	case STATUS_PKT_SENSE:
	{
		struct scsi_status_iu_header *siu;

		FUNC26(ahd, scb, BUS_DMASYNC_POSTREAD);
		siu = (struct scsi_status_iu_header *)scb->sense_data;
		FUNC22(scb, siu->status);
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_SENSE) != 0) {
			ahd_print_path(ahd, scb);
			printk("SCB 0x%x Received PKT Status of 0x%x\n",
			       SCB_GET_TAG(scb), siu->status);
			printk("\tflags = 0x%x, sense len = 0x%x, "
			       "pktfail = 0x%x\n",
			       siu->flags, scsi_4btoul(siu->sense_length),
			       scsi_4btoul(siu->pkt_failures_length));
		}
#endif
		if ((siu->flags & SIU_RSPVALID) != 0) {
			FUNC20(ahd, scb);
			if (FUNC31(siu->pkt_failures_length) < 4) {
				FUNC30("Unable to parse pkt_failures\n");
			} else {

				switch (FUNC5(siu)) {
				case SIU_PFC_NONE:
					FUNC30("No packet failure found\n");
					break;
				case SIU_PFC_CIU_FIELDS_INVALID:
					FUNC30("Invalid Command IU Field\n");
					break;
				case SIU_PFC_TMF_NOT_SUPPORTED:
					FUNC30("TMF not supported\n");
					break;
				case SIU_PFC_TMF_FAILED:
					FUNC30("TMF failed\n");
					break;
				case SIU_PFC_INVALID_TYPE_CODE:
					FUNC30("Invalid L_Q Type code\n");
					break;
				case SIU_PFC_ILLEGAL_REQUEST:
					FUNC30("Illegal request\n");
				default:
					break;
				}
			}
			if (siu->status == SCSI_STATUS_OK)
				FUNC23(scb,
							   CAM_REQ_CMP_ERR);
		}
		if ((siu->flags & SIU_SNSVALID) != 0) {
			scb->flags |= SCB_PKT_SENSE;
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_SENSE) != 0)
				printk("Sense data available\n");
#endif
		}
		FUNC7(ahd, scb);
		break;
	}
	case SCSI_STATUS_CMD_TERMINATED:
	case SCSI_STATUS_CHECK_COND:
	{
		struct ahd_devinfo devinfo;
		struct ahd_dma_seg *sg;
		struct scsi_sense *sc;
		struct ahd_initiator_tinfo *targ_info;
		struct ahd_tmode_tstate *tstate;
		struct ahd_transinfo *tinfo;
#ifdef AHD_DEBUG
		if (ahd_debug & AHD_SHOW_SENSE) {
			ahd_print_path(ahd, scb);
			printk("SCB %d: requests Check Status\n",
			       SCB_GET_TAG(scb));
		}
#endif

		if (FUNC19(scb) == 0)
			break;

		FUNC6(&devinfo, FUNC2(scb),
				    FUNC4(ahd, scb),
				    FUNC1(scb),
				    FUNC0(ahd, scb),
				    ROLE_INITIATOR);
		targ_info = FUNC8(ahd,
						devinfo.channel,
						devinfo.our_scsiid,
						devinfo.target,
						&tstate);
		tinfo = &targ_info->curr;
		sg = scb->sg_list;
		sc = (struct scsi_sense *)hscb->shared_data.idata.cdb;
		/*
		 * Save off the residual if there is one.
		 */
		FUNC29(ahd, scb);
#ifdef AHD_DEBUG
		if (ahd_debug & AHD_SHOW_SENSE) {
			ahd_print_path(ahd, scb);
			printk("Sending Sense\n");
		}
#endif
		scb->sg_count = 0;
		sg = FUNC25(ahd, scb, sg, FUNC12(ahd, scb),
				  FUNC13(ahd, scb),
				  /*last*/TRUE);
		sc->opcode = REQUEST_SENSE;
		sc->byte2 = 0;
		if (tinfo->protocol_version <= SCSI_REV_2
		 && FUNC1(scb) < 8)
			sc->byte2 = FUNC1(scb) << 5;
		sc->unused[0] = 0;
		sc->unused[1] = 0;
		sc->length = FUNC13(ahd, scb);
		sc->control = 0;

		/*
		 * We can't allow the target to disconnect.
		 * This will be an untagged transaction and
		 * having the target disconnect will make this
		 * transaction indestinguishable from outstanding
		 * tagged transactions.
		 */
		hscb->control = 0;

		/*
		 * This request sense could be because the
		 * the device lost power or in some other
		 * way has lost our transfer negotiations.
		 * Renegotiate if appropriate.  Unit attention
		 * errors will be reported before any data
		 * phases occur.
		 */
		if (FUNC11(scb) == FUNC14(scb)) {
			FUNC28(ahd, &devinfo,
					       tstate, targ_info,
					       AHD_NEG_IF_NON_ASYNC);
		}
		if (tstate->auto_negotiate & devinfo.target_mask) {
			hscb->control |= MK_MESSAGE;
			scb->flags &=
			    ~(SCB_NEGOTIATE|SCB_ABORT|SCB_DEVICE_RESET);
			scb->flags |= SCB_AUTO_NEGOTIATE;
		}
		hscb->cdb_len = sizeof(*sc);
		FUNC24(ahd, scb);
		scb->flags |= SCB_SENSE;
		FUNC21(ahd, scb);
		break;
	}
	case SCSI_STATUS_OK:
		FUNC30("%s: Interrupted for status of 0???\n",
		       FUNC16(ahd));
		/* FALLTHROUGH */
	default:
		FUNC7(ahd, scb);
		break;
	}
}