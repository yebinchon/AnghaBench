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
typedef  int u_int ;
struct scb {int flags; TYPE_1__* hscb; int /*<<< orphan*/  sg_count; int /*<<< orphan*/  sense_busaddr; } ;
struct ahd_transinfo {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int bugs; int msgout_len; void* msg_type; int /*<<< orphan*/  msgout_index; int /*<<< orphan*/ * msgout_buf; int /*<<< orphan*/  msgin_index; } ;
struct ahd_initiator_tinfo {struct ahd_transinfo curr; } ;
struct ahd_devinfo {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; int /*<<< orphan*/  role; int /*<<< orphan*/  our_scsiid; } ;
typedef  int /*<<< orphan*/  cam_status ;
struct TYPE_4__ {int phasemsg; } ;
struct TYPE_3__ {int scsiid; int lun; int control; int /*<<< orphan*/  task_management; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCUM ; 
 int /*<<< orphan*/  AC_SENT_BDR ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_CLRLQO_AUTOCLR_BUG ; 
 int AHD_INTCOLLISION_BUG ; 
 int AHD_MODE_CFG_MSK ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_MODE_SCSI_MSK ; 
 int AHD_MODE_UNKNOWN_MSK ; 
 int /*<<< orphan*/  AHD_SENSE_BUFSIZE ; 
 int AHD_SHOW_MISC ; 
 int AHD_SHOW_RECOVERY ; 
 int /*<<< orphan*/  AHD_TRANS_ACTIVE ; 
 int ATNO ; 
#define  BAD_PHASE 164 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  CAM_BDR_SENT ; 
 int /*<<< orphan*/  CAM_DATA_RUN_ERR ; 
 int CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
#define  CFG4ISTAT_INTR 163 
#define  CFG4OVERRUN 162 
 int /*<<< orphan*/  CLRINT ; 
 int /*<<< orphan*/  CLRLQOINT1 ; 
 int CLRLQOPHACHGINPKT ; 
 int CLRSEQINT ; 
#define  DATA_OVERRUN 161 
 int /*<<< orphan*/  DFCNTRL ; 
 int DPHASE ; 
#define  DUMP_CARD_STATE 160 
 int ENSELO ; 
#define  ENTERING_NONPACK 159 
 int /*<<< orphan*/  HADDR ; 
 int /*<<< orphan*/  HCNT ; 
 int HDMAEN ; 
 int HOST_MSG ; 
#define  HOST_MSG_LOOP 158 
#define  IGN_WIDE_RES 157 
#define  ILLEGAL_PHASE 156 
#define  INVALID_SEQINT 155 
 int /*<<< orphan*/  LASTPHASE ; 
 int LQIPHASE_OUTPKT ; 
 int /*<<< orphan*/  LQISTAT2 ; 
#define  MISSED_BUSFREE 154 
#define  MKMSG_FAILED 153 
 int MK_MESSAGE ; 
 int /*<<< orphan*/  MODE_PTR ; 
 int /*<<< orphan*/  MSG_ABORT_TASK ; 
 int /*<<< orphan*/  MSG_BUS_DEV_RESET ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  MSG_OUT ; 
 void* MSG_TYPE_INITIATOR_MSGIN ; 
 void* MSG_TYPE_INITIATOR_MSGOUT ; 
 void* MSG_TYPE_NONE ; 
 void* MSG_TYPE_TARGET_MSGOUT ; 
#define  NO_MATCH 152 
#define  NO_SEQINT 151 
#define  PDATA_REINIT 150 
 int PHASE_MASK ; 
 int PRELOADEN ; 
#define  PROTO_VIOLATION 149 
#define  P_COMMAND 148 
#define  P_DATAIN 147 
#define  P_DATAIN_DT 146 
#define  P_DATAOUT 145 
#define  P_DATAOUT_DT 144 
#define  P_MESGIN 143 
#define  P_MESGOUT 142 
#define  P_STATUS 141 
 int /*<<< orphan*/  REG0 ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
#define  SAW_HWERR 140 
 int SCB_ABORT ; 
 int /*<<< orphan*/  SCB_CDB_LEN ; 
 int /*<<< orphan*/  SCB_CDB_STORE ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_EXTERNAL_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct scb*) ; 
 int FUNC5 (struct scb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct scb*) ; 
 int SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_LUN ; 
 int SCB_PACKETIZED ; 
 int SCB_RECOVERY_SCB ; 
 int /*<<< orphan*/  SCB_SCSIID ; 
 int SCB_TAG_TYPE ; 
 int /*<<< orphan*/  SCB_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  SCSIBUS ; 
 int SCSIEN ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEARCH_REMOVE ; 
 int SELDO ; 
 int /*<<< orphan*/  SELID ; 
 int SELTO ; 
 int /*<<< orphan*/  SEQCTL0 ; 
 int /*<<< orphan*/  SEQINTCODE ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SG_CACHE_PRE ; 
 int /*<<< orphan*/  SG_CACHE_SHADOW ; 
 int SG_LAST_SEG ; 
 int /*<<< orphan*/  SINDEX ; 
#define  SIU_TASKMGMT_ABORT_TASK 139 
#define  SIU_TASKMGMT_ABORT_TASK_SET 138 
#define  SIU_TASKMGMT_CLEAR_TASK_SET 137 
#define  SIU_TASKMGMT_LUN_RESET 136 
#define  SIU_TASKMGMT_TARGET_RESET 135 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
#define  STATUS_OVERRUN 134 
 int STATUS_RCVD ; 
 int /*<<< orphan*/  SXFRCTL0 ; 
 int TAG_ENB ; 
#define  TASKMGMT_CMD_CMPLT_OKAY 133 
#define  TASKMGMT_FUNC_COMPLETE 132 
#define  TRACEPOINT0 131 
#define  TRACEPOINT1 130 
#define  TRACEPOINT2 129 
#define  TRACEPOINT3 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*,struct ahd_devinfo*) ; 
 struct ahd_initiator_tinfo* FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC18 (struct scb*) ; 
 int FUNC19 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct scb*) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*,struct ahd_devinfo*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC24 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct ahd_softc*) ; 
 int FUNC26 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ahd_softc*) ; 
 TYPE_2__* FUNC30 (int) ; 
 struct scb* FUNC31 (struct ahd_softc*,int) ; 
 int FUNC32 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC33 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC37 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC38 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC40 (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC41 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC48 (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC49 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC50 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC51 (char*) ; 
 int /*<<< orphan*/  FUNC52 (char*,...) ; 

__attribute__((used)) static void
FUNC53(struct ahd_softc *ahd, u_int intstat)
{
	u_int seqintcode;

	/*
	 * Save the sequencer interrupt code and clear the SEQINT
	 * bit. We will unpause the sequencer, if appropriate,
	 * after servicing the request.
	 */
	seqintcode = FUNC26(ahd, SEQINTCODE);
	FUNC33(ahd, CLRINT, CLRSEQINT);
	if ((ahd->bugs & AHD_INTCOLLISION_BUG) != 0) {
		/*
		 * Unpause the sequencer and let it clear
		 * SEQINT by writing NO_SEQINT to it.  This
		 * will cause the sequencer to be paused again,
		 * which is the expected state of this routine.
		 */
		FUNC49(ahd);
		while (!FUNC29(ahd))
			;
		FUNC33(ahd, CLRINT, CLRSEQINT);
	}
	FUNC50(ahd);
#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_MISC) != 0)
		printk("%s: Handle Seqint Called for code %d\n",
		       ahd_name(ahd), seqintcode);
#endif
	switch (seqintcode) {
	case ENTERING_NONPACK:
	{
		struct	scb *scb;
		u_int	scbid;

		FUNC0(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
				 ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb == NULL) {
			/*
			 * Somehow need to know if this
			 * is from a selection or reselection.
			 * From that, we can determine target
			 * ID so we at least have an I_T nexus.
			 */
		} else {
			FUNC33(ahd, SAVED_SCSIID, scb->hscb->scsiid);
			FUNC33(ahd, SAVED_LUN, scb->hscb->lun);
			FUNC33(ahd, SEQ_FLAGS, 0x0);
		}
		if ((FUNC26(ahd, LQISTAT2) & LQIPHASE_OUTPKT) != 0
		 && (FUNC26(ahd, SCSISIGO) & ATNO) != 0) {
			/*
			 * Phase change after read stream with
			 * CRC error with P0 asserted on last
			 * packet.
			 */
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_RECOVERY) != 0)
				printk("%s: Assuming LQIPHASE_NLQ with "
				       "P0 assertion\n", ahd_name(ahd));
#endif
		}
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_RECOVERY) != 0)
			printk("%s: Entering NONPACK\n", ahd_name(ahd));
#endif
		break;
	}
	case INVALID_SEQINT:
		FUNC52("%s: Invalid Sequencer interrupt occurred, "
		       "resetting channel.\n",
		       FUNC32(ahd));
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_RECOVERY) != 0)
			ahd_dump_card_state(ahd);
#endif
		FUNC38(ahd, 'A', /*Initiate Reset*/TRUE);
		break;
	case STATUS_OVERRUN:
	{
		struct	scb *scb;
		u_int	scbid;

		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb != NULL)
			FUNC36(ahd, scb);
		else
			FUNC52("%s: ", FUNC32(ahd));
		FUNC52("SCB %d Packetized Status Overrun", scbid);
		FUNC12(ahd);
		FUNC38(ahd, 'A', /*Initiate Reset*/TRUE);
		break;
	}
	case CFG4ISTAT_INTR:
	{
		struct	scb *scb;
		u_int	scbid;

		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb == NULL) {
			FUNC12(ahd);
			FUNC52("CFG4ISTAT: Free SCB %d referenced", scbid);
			FUNC51("For safety");
		}
		FUNC34(ahd, HADDR, scb->sense_busaddr);
		FUNC35(ahd, HCNT, AHD_SENSE_BUFSIZE);
		FUNC33(ahd, HCNT + 2, 0);
		FUNC33(ahd, SG_CACHE_PRE, SG_LAST_SEG);
		FUNC33(ahd, DFCNTRL, PRELOADEN|SCSIEN|HDMAEN);
		break;
	}
	case ILLEGAL_PHASE:
	{
		u_int bus_phase;

		bus_phase = FUNC26(ahd, SCSISIGI) & PHASE_MASK;
		FUNC52("%s: ILLEGAL_PHASE 0x%x\n",
		       FUNC32(ahd), bus_phase);

		switch (bus_phase) {
		case P_DATAOUT:
		case P_DATAIN:
		case P_DATAOUT_DT:
		case P_DATAIN_DT:
		case P_MESGOUT:
		case P_STATUS:
		case P_MESGIN:
			FUNC38(ahd, 'A', /*Initiate Reset*/TRUE);
			FUNC52("%s: Issued Bus Reset.\n", FUNC32(ahd));
			break;
		case P_COMMAND:
		{
			struct	ahd_devinfo devinfo;
			struct	scb *scb;
			struct	ahd_initiator_tinfo *targ_info;
			struct	ahd_tmode_tstate *tstate;
			struct	ahd_transinfo *tinfo;
			u_int	scbid;

			/*
			 * If a target takes us into the command phase
			 * assume that it has been externally reset and
			 * has thus lost our previous packetized negotiation
			 * agreement.  Since we have not sent an identify
			 * message and may not have fully qualified the
			 * connection, we change our command to TUR, assert
			 * ATN and ABORT the task when we go to message in
			 * phase.  The OSM will see the REQUEUE_REQUEST
			 * status and retry the command.
			 */
			scbid = FUNC19(ahd);
			scb = FUNC31(ahd, scbid);
			if (scb == NULL) {
				FUNC52("Invalid phase with no valid SCB.  "
				       "Resetting bus.\n");
				FUNC38(ahd, 'A',
						  /*Initiate Reset*/TRUE);
				break;
			}
			FUNC11(&devinfo, FUNC4(scb),
					    FUNC6(ahd, scb),
					    FUNC3(scb),
					    FUNC2(ahd, scb),
					    ROLE_INITIATOR);
			targ_info = FUNC15(ahd,
							devinfo.channel,
							devinfo.our_scsiid,
							devinfo.target,
							&tstate);
			tinfo = &targ_info->curr;
			FUNC46(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
				      AHD_TRANS_ACTIVE, /*paused*/TRUE);
			FUNC44(ahd, &devinfo, /*period*/0,
					 /*offset*/0, /*ppr_options*/0,
					 AHD_TRANS_ACTIVE, /*paused*/TRUE);
			/* Hand-craft TUR command */
			FUNC33(ahd, SCB_CDB_STORE, 0);
			FUNC33(ahd, SCB_CDB_STORE+1, 0);
			FUNC33(ahd, SCB_CDB_STORE+2, 0);
			FUNC33(ahd, SCB_CDB_STORE+3, 0);
			FUNC33(ahd, SCB_CDB_STORE+4, 0);
			FUNC33(ahd, SCB_CDB_STORE+5, 0);
			FUNC33(ahd, SCB_CDB_LEN, 6);
			scb->hscb->control &= ~(TAG_ENB|SCB_TAG_TYPE);
			scb->hscb->control |= MK_MESSAGE;
			FUNC33(ahd, SCB_CONTROL, scb->hscb->control);
			FUNC33(ahd, MSG_OUT, HOST_MSG);
			FUNC33(ahd, SAVED_SCSIID, scb->hscb->scsiid);
			/*
			 * The lun is 0, regardless of the SCB's lun
			 * as we have not sent an identify message.
			 */
			FUNC33(ahd, SAVED_LUN, 0);
			FUNC33(ahd, SEQ_FLAGS, 0);
			FUNC9(ahd);
			scb->flags &= ~SCB_PACKETIZED;
			scb->flags |= SCB_ABORT|SCB_EXTERNAL_RESET;
			FUNC17(ahd, scb);
			FUNC45(scb, CAM_REQUEUE_REQ);
			FUNC18(scb);

			/* Notify XPT */
			FUNC42(ahd, devinfo.channel, devinfo.target,
				       CAM_LUN_WILDCARD, AC_SENT_BDR);

			/*
			 * Allow the sequencer to continue with
			 * non-pack processing.
			 */
			FUNC43(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
			FUNC33(ahd, CLRLQOINT1, CLRLQOPHACHGINPKT);
			if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0) {
				FUNC33(ahd, CLRLQOINT1, 0);
			}
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_RECOVERY) != 0) {
				ahd_print_path(ahd, scb);
				printk("Unexpected command phase from "
				       "packetized target\n");
			}
#endif
			break;
		}
		}
		break;
	}
	case CFG4OVERRUN:
	{
		struct	scb *scb;
		u_int	scb_index;
		
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_RECOVERY) != 0) {
			printk("%s: CFG4OVERRUN mode = %x\n", ahd_name(ahd),
			       ahd_inb(ahd, MODE_PTR));
		}
#endif
		scb_index = FUNC19(ahd);
		scb = FUNC31(ahd, scb_index);
		if (scb == NULL) {
			/*
			 * Attempt to transfer to an SCB that is
			 * not outstanding.
			 */
			FUNC9(ahd);
			FUNC33(ahd, MSG_OUT, HOST_MSG);
			ahd->msgout_buf[0] = MSG_ABORT_TASK;
			ahd->msgout_len = 1;
			ahd->msgout_index = 0;
			ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
			/*
			 * Clear status received flag to prevent any
			 * attempt to complete this bogus SCB.
			 */
			FUNC33(ahd, SCB_CONTROL,
				 FUNC27(ahd, SCB_CONTROL)
				 & ~STATUS_RCVD);
		}
		break;
	}
	case DUMP_CARD_STATE:
	{
		FUNC12(ahd);
		break;
	}
	case PDATA_REINIT:
	{
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_RECOVERY) != 0) {
			printk("%s: PDATA_REINIT - DFCNTRL = 0x%x "
			       "SG_CACHE_SHADOW = 0x%x\n",
			       ahd_name(ahd), ahd_inb(ahd, DFCNTRL),
			       ahd_inb(ahd, SG_CACHE_SHADOW));
		}
#endif
		FUNC37(ahd);
		break;
	}
	case HOST_MSG_LOOP:
	{
		struct ahd_devinfo devinfo;

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
		FUNC14(ahd, &devinfo);
		if (ahd->msg_type == MSG_TYPE_NONE) {
			struct scb *scb;
			u_int scb_index;
			u_int bus_phase;

			bus_phase = FUNC26(ahd, SCSISIGI) & PHASE_MASK;
			if (bus_phase != P_MESGIN
			 && bus_phase != P_MESGOUT) {
				FUNC52("ahd_intr: HOST_MSG_LOOP bad "
				       "phase 0x%x\n", bus_phase);
				/*
				 * Probably transitioned to bus free before
				 * we got here.  Just punt the message.
				 */
				FUNC12(ahd);
				FUNC10(ahd);
				FUNC39(ahd);
				return;
			}

			scb_index = FUNC19(ahd);
			scb = FUNC31(ahd, scb_index);
			if (devinfo.role == ROLE_INITIATOR) {
				if (bus_phase == P_MESGOUT)
					FUNC47(ahd,
								   &devinfo,
								   scb);
				else {
					ahd->msg_type =
					    MSG_TYPE_INITIATOR_MSGIN;
					ahd->msgin_index = 0;
				}
			}
#ifdef AHD_TARGET_MODE
			else {
				if (bus_phase == P_MESGOUT) {
					ahd->msg_type =
					    MSG_TYPE_TARGET_MSGOUT;
					ahd->msgin_index = 0;
				}
				else 
					ahd_setup_target_msgin(ahd,
							       &devinfo,
							       scb);
			}
#endif
		}

		FUNC24(ahd);
		break;
	}
	case NO_MATCH:
	{
		/* Ensure we don't leave the selection hardware on */
		FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
		FUNC33(ahd, SCSISEQ0, FUNC26(ahd, SCSISEQ0) & ~ENSELO);

		FUNC52("%s:%c:%d: no active SCB for reconnecting "
		       "target - issuing BUS DEVICE RESET\n",
		       FUNC32(ahd), 'A', FUNC26(ahd, SELID) >> 4);
		FUNC52("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
		       "REG0 == 0x%x ACCUM = 0x%x\n",
		       FUNC26(ahd, SAVED_SCSIID), FUNC26(ahd, SAVED_LUN),
		       FUNC28(ahd, REG0), FUNC26(ahd, ACCUM));
		FUNC52("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
		       "SINDEX == 0x%x\n",
		       FUNC26(ahd, SEQ_FLAGS), FUNC19(ahd),
		       FUNC16(ahd,
					 FUNC1(FUNC26(ahd, SAVED_SCSIID),
						   FUNC26(ahd, SAVED_LUN))),
		       FUNC28(ahd, SINDEX));
		FUNC52("SELID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
		       "SCB_CONTROL == 0x%x\n",
		       FUNC26(ahd, SELID), FUNC27(ahd, SCB_SCSIID),
		       FUNC27(ahd, SCB_LUN),
		       FUNC27(ahd, SCB_CONTROL));
		FUNC52("SCSIBUS[0] == 0x%x, SCSISIGI == 0x%x\n",
		       FUNC26(ahd, SCSIBUS), FUNC26(ahd, SCSISIGI));
		FUNC52("SXFRCTL0 == 0x%x\n", FUNC26(ahd, SXFRCTL0));
		FUNC52("SEQCTL0 == 0x%x\n", FUNC26(ahd, SEQCTL0));
		FUNC12(ahd);
		ahd->msgout_buf[0] = MSG_BUS_DEV_RESET;
		ahd->msgout_len = 1;
		ahd->msgout_index = 0;
		ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
		FUNC33(ahd, MSG_OUT, HOST_MSG);
		FUNC9(ahd);
		break;
	}
	case PROTO_VIOLATION:
	{
		FUNC25(ahd);
		break;
	}
	case IGN_WIDE_RES:
	{
		struct ahd_devinfo devinfo;

		FUNC14(ahd, &devinfo);
		FUNC23(ahd, &devinfo);
		break;
	}
	case BAD_PHASE:
	{
		u_int lastphase;

		lastphase = FUNC26(ahd, LASTPHASE);
		FUNC52("%s:%c:%d: unknown scsi bus phase %x, "
		       "lastphase = 0x%x.  Attempting to continue\n",
		       FUNC32(ahd), 'A',
		       FUNC7(ahd, FUNC26(ahd, SAVED_SCSIID)),
		       lastphase, FUNC26(ahd, SCSISIGI));
		break;
	}
	case MISSED_BUSFREE:
	{
		u_int lastphase;

		lastphase = FUNC26(ahd, LASTPHASE);
		FUNC52("%s:%c:%d: Missed busfree. "
		       "Lastphase = 0x%x, Curphase = 0x%x\n",
		       FUNC32(ahd), 'A',
		       FUNC7(ahd, FUNC26(ahd, SAVED_SCSIID)),
		       lastphase, FUNC26(ahd, SCSISIGI));
		FUNC39(ahd);
		return;
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
		struct	scb *scb;
		u_int	scbindex;
#ifdef AHD_DEBUG
		u_int	lastphase;
#endif

		scbindex = FUNC19(ahd);
		scb = FUNC31(ahd, scbindex);
#ifdef AHD_DEBUG
		lastphase = ahd_inb(ahd, LASTPHASE);
		if ((ahd_debug & AHD_SHOW_RECOVERY) != 0) {
			ahd_print_path(ahd, scb);
			printk("data overrun detected %s.  Tag == 0x%x.\n",
			       ahd_lookup_phase_entry(lastphase)->phasemsg,
			       SCB_GET_TAG(scb));
			ahd_print_path(ahd, scb);
			printk("%s seen Data Phase.  Length = %ld.  "
			       "NumSGs = %d.\n",
			       ahd_inb(ahd, SEQ_FLAGS) & DPHASE
			       ? "Have" : "Haven't",
			       ahd_get_transfer_length(scb), scb->sg_count);
			ahd_dump_sglist(scb);
		}
#endif

		/*
		 * Set this and it will take effect when the
		 * target does a command complete.
		 */
		FUNC17(ahd, scb);
		FUNC45(scb, CAM_DATA_RUN_ERR);
		FUNC18(scb);
		break;
	}
	case MKMSG_FAILED:
	{
		struct ahd_devinfo devinfo;
		struct scb *scb;
		u_int scbid;

		FUNC14(ahd, &devinfo);
		FUNC52("%s:%c:%d:%d: Attempt to issue message failed\n",
		       FUNC32(ahd), devinfo.channel, devinfo.target,
		       devinfo.lun);
		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb != NULL
		 && (scb->flags & SCB_RECOVERY_SCB) != 0)
			/*
			 * Ensure that we didn't put a second instance of this
			 * SCB into the QINFIFO.
			 */
			FUNC41(ahd, FUNC6(ahd, scb),
					   FUNC2(ahd, scb),
					   FUNC3(scb), FUNC5(scb),
					   ROLE_INITIATOR, /*status*/0,
					   SEARCH_REMOVE);
		FUNC33(ahd, SCB_CONTROL,
			 FUNC27(ahd, SCB_CONTROL) & ~MK_MESSAGE);
		break;
	}
	case TASKMGMT_FUNC_COMPLETE:
	{
		u_int	scbid;
		struct	scb *scb;

		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb != NULL) {
			u_int	   lun;
			u_int	   tag;
			cam_status error;

			FUNC36(ahd, scb);
			FUNC52("Task Management Func 0x%x Complete\n",
			       scb->hscb->task_management);
			lun = CAM_LUN_WILDCARD;
			tag = SCB_LIST_NULL;

			switch (scb->hscb->task_management) {
			case SIU_TASKMGMT_ABORT_TASK:
				tag = FUNC5(scb);
				/* fall through */
			case SIU_TASKMGMT_ABORT_TASK_SET:
			case SIU_TASKMGMT_CLEAR_TASK_SET:
				lun = scb->hscb->lun;
				error = CAM_REQ_ABORTED;
				FUNC8(ahd, FUNC6(ahd, scb),
					       'A', lun, tag, ROLE_INITIATOR,
					       error);
				break;
			case SIU_TASKMGMT_LUN_RESET:
				lun = scb->hscb->lun;
				/* fall through */
			case SIU_TASKMGMT_TARGET_RESET:
			{
				struct ahd_devinfo devinfo;

				FUNC40(ahd, &devinfo, scb);
				error = CAM_BDR_SENT;
				FUNC21(ahd, &devinfo, lun,
						    CAM_BDR_SENT,
						    lun != CAM_LUN_WILDCARD
						    ? "Lun Reset"
						    : "Target Reset",
						    /*verbose_level*/0);
				break;
			}
			default:
				FUNC51("Unexpected TaskMgmt Func\n");
				break;
			}
		}
		break;
	}
	case TASKMGMT_CMD_CMPLT_OKAY:
	{
		u_int	scbid;
		struct	scb *scb;

		/*
		 * An ABORT TASK TMF failed to be delivered before
		 * the targeted command completed normally.
		 */
		scbid = FUNC19(ahd);
		scb = FUNC31(ahd, scbid);
		if (scb != NULL) {
			/*
			 * Remove the second instance of this SCB from
			 * the QINFIFO if it is still there.
                         */
			FUNC36(ahd, scb);
			FUNC52("SCB completes before TMF\n");
			/*
			 * Handle losing the race.  Wait until any
			 * current selection completes.  We will then
			 * set the TMF back to zero in this SCB so that
			 * the sequencer doesn't bother to issue another
			 * sequencer interrupt for its completion.
			 */
			while ((FUNC26(ahd, SCSISEQ0) & ENSELO) != 0
			    && (FUNC26(ahd, SSTAT0) & SELDO) == 0
			    && (FUNC26(ahd, SSTAT1) & SELTO) == 0)
				;
			FUNC33(ahd, SCB_TASK_MANAGEMENT, 0);
			FUNC41(ahd, FUNC6(ahd, scb),
					   FUNC2(ahd, scb),  
					   FUNC3(scb), FUNC5(scb), 
					   ROLE_INITIATOR, /*status*/0,   
					   SEARCH_REMOVE);
		}
		break;
	}
	case TRACEPOINT0:
	case TRACEPOINT1:
	case TRACEPOINT2:
	case TRACEPOINT3:
		FUNC52("%s: Tracepoint %d\n", FUNC32(ahd),
		       seqintcode - TRACEPOINT0);
		break;
	case NO_SEQINT:
		break;
	case SAW_HWERR:
		FUNC22(ahd);
		break;
	default:
		FUNC52("%s: Unexpected SEQINTCODE %d\n", FUNC32(ahd),
		       seqintcode);
		break;
	}
	/*
	 *  The sequencer is paused immediately on
	 *  a SEQINT, so we should restart it when
	 *  we're done.
	 */
	FUNC49(ahd);
}