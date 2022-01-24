#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct scsi_sense {int byte2; int length; int /*<<< orphan*/  control; int /*<<< orphan*/ * unused; int /*<<< orphan*/  opcode; } ;
struct scb {int flags; int sg_list_phys; int sg_count; struct hardware_scb* hscb; struct ahc_dma_seg* sg_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  scsi_status; } ;
struct TYPE_7__ {int /*<<< orphan*/  cdb; TYPE_1__ status; } ;
struct hardware_scb {int tag; int cdb_len; int dataptr; int datacnt; int sgptr; int /*<<< orphan*/  control; TYPE_2__ shared_data; } ;
struct ahc_transinfo {int /*<<< orphan*/  protocol_version; } ;
struct ahc_tmode_tstate {int auto_negotiate; } ;
struct ahc_softc {int msgout_len; int features; int flags; TYPE_4__* scb_data; int /*<<< orphan*/  msgin_index; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  msgout_index; int /*<<< orphan*/ * msgout_buf; } ;
struct ahc_initiator_tinfo {struct ahc_transinfo curr; } ;
struct ahc_dma_seg {int addr; int len; } ;
struct ahc_devinfo {int target_mask; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; int /*<<< orphan*/  role; int /*<<< orphan*/  our_scsiid; } ;
struct TYPE_10__ {int phase; int phasemsg; } ;
struct TYPE_9__ {TYPE_3__* hscbs; } ;
struct TYPE_8__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCUM ; 
 int AHC_39BIT_ADDRESSING ; 
 int AHC_DMA_LAST_SEG ; 
 int AHC_DT ; 
 int /*<<< orphan*/  AHC_NEG_IF_NON_ASYNC ; 
 int AHC_SG_LEN_MASK ; 
 int AHC_SHOW_SENSE ; 
 int AHC_ULTRA2 ; 
 int /*<<< orphan*/  ARG_1 ; 
#define  BAD_PHASE 145 
#define  BAD_STATUS 144 
 int BITBUCKET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  CAM_AUTOSENSE_FAIL ; 
 int /*<<< orphan*/  CAM_DATA_RUN_ERR ; 
 int /*<<< orphan*/  CAM_SCSI_STATUS_ERROR ; 
 int /*<<< orphan*/  CAM_UNCOR_PARITY ; 
 int CDI ; 
 int CLRCHN ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRSEQINT ; 
 int CLRSTCNT ; 
#define  DATA_OVERRUN 143 
 int DPHASE ; 
 int /*<<< orphan*/  DSCOMMAND1 ; 
 int ENAUTOATNP ; 
 int ENRSELI ; 
 int ENSELI ; 
 int HADDLDSEL0 ; 
 int /*<<< orphan*/  HADDR ; 
 int HOST_MSG ; 
#define  HOST_MSG_LOOP 142 
#define  IGN_WIDE_RES 141 
 int /*<<< orphan*/  LASTPHASE ; 
#define  MISSED_BUSFREE 140 
#define  MKMSG_FAILED 139 
 int /*<<< orphan*/  MK_MESSAGE ; 
 int MSGI ; 
 int /*<<< orphan*/  MSG_BUS_DEV_RESET ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MSG_TYPE_INITIATOR_MSGIN ; 
 int /*<<< orphan*/  MSG_TYPE_INITIATOR_MSGOUT ; 
 int /*<<< orphan*/  MSG_TYPE_NONE ; 
 int /*<<< orphan*/  MSG_TYPE_TARGET_MSGOUT ; 
#define  NO_FREE_SCB 138 
#define  NO_MATCH 137 
#define  OUT_OF_RANGE 136 
#define  PDATA_REINIT 135 
#define  PERR_DETECTED 134 
 int PHASE_MASK ; 
#define  PROTO_VIOLATION 133 
 int P_MESGIN ; 
 int P_MESGOUT ; 
 int /*<<< orphan*/  REQUEST_SENSE ; 
 int /*<<< orphan*/  RETURN_1 ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int /*<<< orphan*/  SCBPTR ; 
 int SCB_AUTO_NEGOTIATE ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct scb*) ; 
 int FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  SCB_LUN ; 
#define  SCB_MISMATCH 132 
 int SCB_NEGOTIATE ; 
 int SCB_RECOVERY_SCB ; 
 int /*<<< orphan*/  SCB_SCSIID ; 
 int SCB_SENSE ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  SCSIBUSL ; 
 int /*<<< orphan*/  SCSIDATL ; 
 int /*<<< orphan*/  SCSIID ; 
 int SCSIINT ; 
 int SCSIPERR ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SCSI_REV_2 ; 
#define  SCSI_STATUS_CHECK_COND 131 
#define  SCSI_STATUS_CMD_TERMINATED 130 
#define  SCSI_STATUS_OK 129 
 int /*<<< orphan*/  SEARCH_REMOVE ; 
#define  SEND_REJECT 128 
 int SEND_SENSE ; 
 int /*<<< orphan*/  SEQCTL ; 
 int SEQINT_MASK ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int SG_FULL_RESID ; 
 int SG_HIGH_ADDR_BITS ; 
 int /*<<< orphan*/  SINDEX ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  SXFRCTL0 ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int ahc_debug ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_softc*,struct ahc_devinfo*) ; 
 struct ahc_initiator_tinfo* FUNC9 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahc_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC10 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC11 (struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct scb*) ; 
 int FUNC13 (struct ahc_softc*,struct scb*) ; 
 int FUNC14 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC15 (struct scb*) ; 
 int /*<<< orphan*/  FUNC16 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ahc_softc*) ; 
 void* FUNC19 (int) ; 
 int FUNC20 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int) ; 
 struct scb* FUNC23 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct scb*) ; 
 TYPE_5__* ahc_phase_table ; 
 int /*<<< orphan*/  FUNC27 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC28 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC29 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC30 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC31 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC33 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC34 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC38 (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC39 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC40 (struct ahc_softc*,struct ahc_devinfo*,struct ahc_tmode_tstate*,struct ahc_initiator_tinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct ahc_softc*,struct scb*) ; 
 int num_phases ; 
 int /*<<< orphan*/  FUNC42 (char*,...) ; 
 int /*<<< orphan*/  FUNC43 (char*,...) ; 

__attribute__((used)) static void
FUNC44(struct ahc_softc *ahc, u_int intstat)
{
	struct scb *scb;
	struct ahc_devinfo devinfo;
	
	FUNC8(ahc, &devinfo);

	/*
	 * Clear the upper byte that holds SEQINT status
	 * codes and clear the SEQINT bit. We will unpause
	 * the sequencer, if appropriate, after servicing
	 * the request.
	 */
	FUNC25(ahc, CLRINT, CLRSEQINT);
	switch (intstat & SEQINT_MASK) {
	case BAD_STATUS:
	{
		u_int  scb_index;
		struct hardware_scb *hscb;

		/*
		 * Set the default return value to 0 (don't
		 * send sense).  The sense code will change
		 * this if needed.
		 */
		FUNC25(ahc, RETURN_1, 0);

		/*
		 * The sequencer will notify us when a command
		 * has an error that would be of interest to
		 * the kernel.  This allows us to leave the sequencer
		 * running in the common case of command completes
		 * without error.  The sequencer will already have
		 * dma'd the SCB back up to us, so we can reference
		 * the in kernel copy directly.
		 */
		scb_index = FUNC20(ahc, SCB_TAG);
		scb = FUNC23(ahc, scb_index);
		if (scb == NULL) {
			FUNC27(ahc, &devinfo);
			FUNC43("ahc_intr - referenced scb "
			       "not valid during seqint 0x%x scb(%d)\n",
			       intstat, scb_index);
			FUNC7(ahc);
			FUNC42("for safety");
			goto unpause;
		}

		hscb = scb->hscb; 

		/* Don't want to clobber the original sense code */
		if ((scb->flags & SCB_SENSE) != 0) {
			/*
			 * Clear the SCB_SENSE Flag and have
			 * the sequencer do a normal command
			 * complete.
			 */
			scb->flags &= ~SCB_SENSE;
			FUNC36(scb, CAM_AUTOSENSE_FAIL);
			break;
		}
		FUNC36(scb, CAM_SCSI_STATUS_ERROR);
		/* Freeze the queue until the client sees the error. */
		FUNC10(ahc, scb);
		FUNC11(scb);
		FUNC35(scb, hscb->shared_data.status.scsi_status);
		switch (hscb->shared_data.status.scsi_status) {
		case SCSI_STATUS_OK:
			FUNC43("%s: Interrupted for status of 0???\n",
			       FUNC24(ahc));
			break;
		case SCSI_STATUS_CMD_TERMINATED:
		case SCSI_STATUS_CHECK_COND:
		{
			struct ahc_dma_seg *sg;
			struct scsi_sense *sc;
			struct ahc_initiator_tinfo *targ_info;
			struct ahc_tmode_tstate *tstate;
			struct ahc_transinfo *tinfo;
#ifdef AHC_DEBUG
			if (ahc_debug & AHC_SHOW_SENSE) {
				ahc_print_path(ahc, scb);
				printk("SCB %d: requests Check Status\n",
				       scb->hscb->tag);
			}
#endif

			if (FUNC26(scb) == 0)
				break;

			targ_info = FUNC9(ahc,
							devinfo.channel,
							devinfo.our_scsiid,
							devinfo.target,
							&tstate);
			tinfo = &targ_info->curr;
			sg = scb->sg_list;
			sc = (struct scsi_sense *)(&hscb->shared_data.cdb); 
			/*
			 * Save off the residual if there is one.
			 */
			FUNC41(ahc, scb);
#ifdef AHC_DEBUG
			if (ahc_debug & AHC_SHOW_SENSE) {
				ahc_print_path(ahc, scb);
				printk("Sending Sense\n");
			}
#endif
			sg->addr = FUNC13(ahc, scb);
			sg->len = FUNC14(ahc, scb);
			sg->len |= AHC_DMA_LAST_SEG;

			/* Fixup byte order */
			sg->addr = FUNC19(sg->addr);
			sg->len = FUNC19(sg->len);

			sc->opcode = REQUEST_SENSE;
			sc->byte2 = 0;
			if (tinfo->protocol_version <= SCSI_REV_2
			 && FUNC2(scb) < 8)
				sc->byte2 = FUNC2(scb) << 5;
			sc->unused[0] = 0;
			sc->unused[1] = 0;
			sc->length = sg->len;
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
			if (FUNC12(scb) 
			 == FUNC15(scb)) {
				FUNC40(ahc, &devinfo,
						       tstate, targ_info,
						       AHC_NEG_IF_NON_ASYNC);
			}
			if (tstate->auto_negotiate & devinfo.target_mask) {
				hscb->control |= MK_MESSAGE;
				scb->flags &= ~SCB_NEGOTIATE;
				scb->flags |= SCB_AUTO_NEGOTIATE;
			}
			hscb->cdb_len = sizeof(*sc);
			hscb->dataptr = sg->addr; 
			hscb->datacnt = sg->len;
			hscb->sgptr = scb->sg_list_phys | SG_FULL_RESID;
			hscb->sgptr = FUNC19(hscb->sgptr);
			scb->sg_count = 1;
			scb->flags |= SCB_SENSE;
			FUNC29(ahc, scb);
			FUNC25(ahc, RETURN_1, SEND_SENSE);
			/*
			 * Ensure we have enough time to actually
			 * retrieve the sense.
			 */
			FUNC33(scb, 5 * 1000000);
			break;
		}
		default:
			break;
		}
		break;
	}
	case NO_MATCH:
	{
		/* Ensure we don't leave the selection hardware on */
		FUNC25(ahc, SCSISEQ,
			 FUNC20(ahc, SCSISEQ) & (ENSELI|ENRSELI|ENAUTOATNP));

		FUNC43("%s:%c:%d: no active SCB for reconnecting "
		       "target - issuing BUS DEVICE RESET\n",
		       FUNC24(ahc), devinfo.channel, devinfo.target);
		FUNC43("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
		       "ARG_1 == 0x%x ACCUM = 0x%x\n",
		       FUNC20(ahc, SAVED_SCSIID), FUNC20(ahc, SAVED_LUN),
		       FUNC20(ahc, ARG_1), FUNC20(ahc, ACCUM));
		FUNC43("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
		       "SINDEX == 0x%x\n",
		       FUNC20(ahc, SEQ_FLAGS), FUNC20(ahc, SCBPTR),
		       FUNC21(ahc,
			    FUNC0(FUNC20(ahc, SAVED_SCSIID),
				      FUNC20(ahc, SAVED_LUN))),
		       FUNC20(ahc, SINDEX));
		FUNC43("SCSIID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
		       "SCB_TAG == 0x%x, SCB_CONTROL == 0x%x\n",
		       FUNC20(ahc, SCSIID), FUNC20(ahc, SCB_SCSIID),
		       FUNC20(ahc, SCB_LUN), FUNC20(ahc, SCB_TAG),
		       FUNC20(ahc, SCB_CONTROL));
		FUNC43("SCSIBUSL == 0x%x, SCSISIGI == 0x%x\n",
		       FUNC20(ahc, SCSIBUSL), FUNC20(ahc, SCSISIGI));
		FUNC43("SXFRCTL0 == 0x%x\n", FUNC20(ahc, SXFRCTL0));
		FUNC43("SEQCTL == 0x%x\n", FUNC20(ahc, SEQCTL));
		FUNC7(ahc);
		ahc->msgout_buf[0] = MSG_BUS_DEV_RESET;
		ahc->msgout_len = 1;
		ahc->msgout_index = 0;
		ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
		FUNC25(ahc, MSG_OUT, HOST_MSG);
		FUNC4(ahc);
		break;
	}
	case SEND_REJECT: 
	{
		u_int rejbyte = FUNC20(ahc, ACCUM);
		FUNC43("%s:%c:%d: Warning - unknown message received from "
		       "target (0x%x).  Rejecting\n", 
		       FUNC24(ahc), devinfo.channel, devinfo.target, rejbyte);
		break; 
	}
	case PROTO_VIOLATION:
	{
		FUNC18(ahc);
		break;
	}
	case IGN_WIDE_RES:
		FUNC16(ahc, &devinfo);
		break;
	case PDATA_REINIT:
		FUNC30(ahc);
		break;
	case BAD_PHASE:
	{
		u_int lastphase;

		lastphase = FUNC20(ahc, LASTPHASE);
		FUNC43("%s:%c:%d: unknown scsi bus phase %x, "
		       "lastphase = 0x%x.  Attempting to continue\n",
		       FUNC24(ahc), devinfo.channel, devinfo.target,
		       lastphase, FUNC20(ahc, SCSISIGI));
		break;
	}
	case MISSED_BUSFREE:
	{
		u_int lastphase;

		lastphase = FUNC20(ahc, LASTPHASE);
		FUNC43("%s:%c:%d: Missed busfree. "
		       "Lastphase = 0x%x, Curphase = 0x%x\n",
		       FUNC24(ahc), devinfo.channel, devinfo.target,
		       lastphase, FUNC20(ahc, SCSISIGI));
		FUNC32(ahc);
		return;
	}
	case HOST_MSG_LOOP:
	{
		/*
		 * The sequencer has encountered a message phase
		 * that requires host assistance for completion.
		 * While handling the message phase(s), we will be
		 * notified by the sequencer after each byte is
		 * transferred so we can track bus phase changes.
		 *
		 * If this is the first time we've seen a HOST_MSG_LOOP
		 * interrupt, initialize the state of the host message
		 * loop.
		 */
		if (ahc->msg_type == MSG_TYPE_NONE) {
			struct scb *scb;
			u_int scb_index;
			u_int bus_phase;

			bus_phase = FUNC20(ahc, SCSISIGI) & PHASE_MASK;
			if (bus_phase != P_MESGIN
			 && bus_phase != P_MESGOUT) {
				FUNC43("ahc_intr: HOST_MSG_LOOP bad "
				       "phase 0x%x\n",
				      bus_phase);
				/*
				 * Probably transitioned to bus free before
				 * we got here.  Just punt the message.
				 */
				FUNC5(ahc);
				FUNC32(ahc);
				return;
			}

			scb_index = FUNC20(ahc, SCB_TAG);
			scb = FUNC23(ahc, scb_index);
			if (devinfo.role == ROLE_INITIATOR) {
				if (bus_phase == P_MESGOUT) {
					if (scb == NULL)
						FUNC42("HOST_MSG_LOOP with "
						      "invalid SCB %x\n",
						      scb_index);

					FUNC37(ahc,
								   &devinfo,
								   scb);
				} else {
					ahc->msg_type =
					    MSG_TYPE_INITIATOR_MSGIN;
					ahc->msgin_index = 0;
				}
			}
#ifdef AHC_TARGET_MODE
			else {
				if (bus_phase == P_MESGOUT) {
					ahc->msg_type =
					    MSG_TYPE_TARGET_MSGOUT;
					ahc->msgin_index = 0;
				}
				else 
					ahc_setup_target_msgin(ahc,
							       &devinfo,
							       scb);
			}
#endif
		}

		FUNC17(ahc);
		break;
	}
	case PERR_DETECTED:
	{
		/*
		 * If we've cleared the parity error interrupt
		 * but the sequencer still believes that SCSIPERR
		 * is true, it must be that the parity error is
		 * for the currently presented byte on the bus,
		 * and we are not in a phase (data-in) where we will
		 * eventually ack this byte.  Ack the byte and
		 * throw it away in the hope that the target will
		 * take us to message out to deliver the appropriate
		 * error message.
		 */
		if ((intstat & SCSIINT) == 0
		 && (FUNC20(ahc, SSTAT1) & SCSIPERR) != 0) {

			if ((ahc->features & AHC_DT) == 0) {
				u_int curphase;

				/*
				 * The hardware will only let you ack bytes
				 * if the expected phase in SCSISIGO matches
				 * the current phase.  Make sure this is
				 * currently the case.
				 */
				curphase = FUNC20(ahc, SCSISIGI) & PHASE_MASK;
				FUNC25(ahc, LASTPHASE, curphase);
				FUNC25(ahc, SCSISIGO, curphase);
			}
			if ((FUNC20(ahc, SCSISIGI) & (CDI|MSGI)) == 0) {
				int wait;

				/*
				 * In a data phase.  Faster to bitbucket
				 * the data than to individually ack each
				 * byte.  This is also the only strategy
				 * that will work with AUTOACK enabled.
				 */
				FUNC25(ahc, SXFRCTL1,
					 FUNC20(ahc, SXFRCTL1) | BITBUCKET);
				wait = 5000;
				while (--wait != 0) {
					if ((FUNC20(ahc, SCSISIGI)
					  & (CDI|MSGI)) != 0)
						break;
					FUNC6(100);
				}
				FUNC25(ahc, SXFRCTL1,
					 FUNC20(ahc, SXFRCTL1) & ~BITBUCKET);
				if (wait == 0) {
					struct	scb *scb;
					u_int	scb_index;

					FUNC27(ahc, &devinfo);
					FUNC43("Unable to clear parity error.  "
					       "Resetting bus.\n");
					scb_index = FUNC20(ahc, SCB_TAG);
					scb = FUNC23(ahc, scb_index);
					if (scb != NULL)
						FUNC36(scb,
						    CAM_UNCOR_PARITY);
					FUNC31(ahc, devinfo.channel, 
							  /*init reset*/TRUE);
				}
			} else {
				FUNC20(ahc, SCSIDATL);
			}
		}
		break;
	}
	case DATA_OVERRUN:
	{
		/*
		 * When the sequencer detects an overrun, it
		 * places the controller in "BITBUCKET" mode
		 * and allows the target to complete its transfer.
		 * Unfortunately, none of the counters get updated
		 * when the controller is in this mode, so we have
		 * no way of knowing how large the overrun was.
		 */
		u_int scbindex = FUNC20(ahc, SCB_TAG);
		u_int lastphase = FUNC20(ahc, LASTPHASE);
		u_int i;

		scb = FUNC23(ahc, scbindex);
		for (i = 0; i < num_phases; i++) {
			if (lastphase == ahc_phase_table[i].phase)
				break;
		}
		FUNC28(ahc, scb);
		FUNC43("data overrun detected %s."
		       "  Tag == 0x%x.\n",
		       ahc_phase_table[i].phasemsg,
  		       scb->hscb->tag);
		FUNC28(ahc, scb);
		FUNC43("%s seen Data Phase.  Length = %ld.  NumSGs = %d.\n",
		       FUNC20(ahc, SEQ_FLAGS) & DPHASE ? "Have" : "Haven't",
		       FUNC15(scb), scb->sg_count);
		if (scb->sg_count > 0) {
			for (i = 0; i < scb->sg_count; i++) {

				FUNC43("sg[%d] - Addr 0x%x%x : Length %d\n",
				       i,
				       (FUNC22(scb->sg_list[i].len) >> 24
				        & SG_HIGH_ADDR_BITS),
				       FUNC22(scb->sg_list[i].addr),
				       FUNC22(scb->sg_list[i].len)
				       & AHC_SG_LEN_MASK);
			}
		}
		/*
		 * Set this and it will take effect when the
		 * target does a command complete.
		 */
		FUNC10(ahc, scb);
		if ((scb->flags & SCB_SENSE) == 0) {
			FUNC36(scb, CAM_DATA_RUN_ERR);
		} else {
			scb->flags &= ~SCB_SENSE;
			FUNC36(scb, CAM_AUTOSENSE_FAIL);
		}
		FUNC11(scb);

		if ((ahc->features & AHC_ULTRA2) != 0) {
			/*
			 * Clear the channel in case we return
			 * to data phase later.
			 */
			FUNC25(ahc, SXFRCTL0,
				 FUNC20(ahc, SXFRCTL0) | CLRSTCNT|CLRCHN);
			FUNC25(ahc, SXFRCTL0,
				 FUNC20(ahc, SXFRCTL0) | CLRSTCNT|CLRCHN);
		}
		if ((ahc->flags & AHC_39BIT_ADDRESSING) != 0) {
			u_int dscommand1;

			/* Ensure HHADDR is 0 for future DMA operations. */
			dscommand1 = FUNC20(ahc, DSCOMMAND1);
			FUNC25(ahc, DSCOMMAND1, dscommand1 | HADDLDSEL0);
			FUNC25(ahc, HADDR, 0);
			FUNC25(ahc, DSCOMMAND1, dscommand1);
		}
		break;
	}
	case MKMSG_FAILED:
	{
		u_int scbindex;

		FUNC43("%s:%c:%d:%d: Attempt to issue message failed\n",
		       FUNC24(ahc), devinfo.channel, devinfo.target,
		       devinfo.lun);
		scbindex = FUNC20(ahc, SCB_TAG);
		scb = FUNC23(ahc, scbindex);
		if (scb != NULL
		 && (scb->flags & SCB_RECOVERY_SCB) != 0)
			/*
			 * Ensure that we didn't put a second instance of this
			 * SCB into the QINFIFO.
			 */
			FUNC34(ahc, FUNC3(ahc, scb),
					   FUNC1(ahc, scb),
					   FUNC2(scb), scb->hscb->tag,
					   ROLE_INITIATOR, /*status*/0,
					   SEARCH_REMOVE);
		break;
	}
	case NO_FREE_SCB:
	{
		FUNC43("%s: No free or disconnected SCBs\n", FUNC24(ahc));
		FUNC7(ahc);
		FUNC42("for safety");
		break;
	}
	case SCB_MISMATCH:
	{
		u_int scbptr;

		scbptr = FUNC20(ahc, SCBPTR);
		FUNC43("Bogus TAG after DMA.  SCBPTR %d, tag %d, our tag %d\n",
		       scbptr, FUNC20(ahc, ARG_1),
		       ahc->scb_data->hscbs[scbptr].tag);
		FUNC7(ahc);
		FUNC42("for safety");
		break;
	}
	case OUT_OF_RANGE:
	{
		FUNC43("%s: BTT calculation out of range\n", FUNC24(ahc));
		FUNC43("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
		       "ARG_1 == 0x%x ACCUM = 0x%x\n",
		       FUNC20(ahc, SAVED_SCSIID), FUNC20(ahc, SAVED_LUN),
		       FUNC20(ahc, ARG_1), FUNC20(ahc, ACCUM));
		FUNC43("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
		       "SINDEX == 0x%x\n, A == 0x%x\n",
		       FUNC20(ahc, SEQ_FLAGS), FUNC20(ahc, SCBPTR),
		       FUNC21(ahc,
			    FUNC0(FUNC20(ahc, SAVED_SCSIID),
				      FUNC20(ahc, SAVED_LUN))),
		       FUNC20(ahc, SINDEX),
		       FUNC20(ahc, ACCUM));
		FUNC43("SCSIID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
		       "SCB_TAG == 0x%x, SCB_CONTROL == 0x%x\n",
		       FUNC20(ahc, SCSIID), FUNC20(ahc, SCB_SCSIID),
		       FUNC20(ahc, SCB_LUN), FUNC20(ahc, SCB_TAG),
		       FUNC20(ahc, SCB_CONTROL));
		FUNC43("SCSIBUSL == 0x%x, SCSISIGI == 0x%x\n",
		       FUNC20(ahc, SCSIBUSL), FUNC20(ahc, SCSISIGI));
		FUNC7(ahc);
		FUNC42("for safety");
		break;
	}
	default:
		FUNC43("ahc_intr: seqint, "
		       "intstat == 0x%x, scsisigi = 0x%x\n",
		       intstat, FUNC20(ahc, SCSISIGI));
		break;
	}
unpause:
	/*
	 *  The sequencer is paused immediately on
	 *  a SEQINT, so we should restart it when
	 *  we're done.
	 */
	FUNC39(ahc);
}