#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
struct ahc_tmode_tstate {struct ahc_tmode_lstate** enabled_luns; } ;
struct ahc_tmode_lstate {int dummy; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int* msgin_buf; int msgin_index; int msgout_len; int* msgout_buf; scalar_t__ msgout_index; struct ahc_tmode_tstate** enabled_targets; } ;
struct ahc_initiator_tinfo {int scsirate; } ;
struct ahc_devinfo {size_t our_scsiid; size_t lun; int /*<<< orphan*/  channel; int /*<<< orphan*/  target; int /*<<< orphan*/  role; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCMSG_EXT ; 
 int /*<<< orphan*/  AHC_NEG_ALWAYS ; 
 int AHC_TRANS_ACTIVE ; 
 int AHC_TRANS_GOAL ; 
 int /*<<< orphan*/  CAM_BDR_SENT ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int FALSE ; 
 int /*<<< orphan*/  INITIATOR_TAG ; 
 int MSGLOOP_IN_PROG ; 
 int MSGLOOP_MSGCOMPLETE ; 
 int MSGLOOP_TERMINATED ; 
#define  MSG_ABORT 143 
#define  MSG_ABORT_TAG 142 
#define  MSG_BUS_DEV_RESET 141 
#define  MSG_CLEAR_QUEUE 140 
#define  MSG_CMDCOMPLETE 139 
#define  MSG_DISCONNECT 138 
#define  MSG_EXTENDED 137 
#define  MSG_EXT_PPR 136 
 int MSG_EXT_PPR_DT_REQ ; 
 int MSG_EXT_PPR_LEN ; 
#define  MSG_EXT_SDTR 135 
 int MSG_EXT_SDTR_LEN ; 
#define  MSG_EXT_WDTR 134 
 int MSG_EXT_WDTR_LEN ; 
#define  MSG_IGN_WIDE_RESIDUE 133 
#define  MSG_MESSAGE_REJECT 132 
#define  MSG_NOOP 131 
#define  MSG_RESTOREPOINTERS 130 
#define  MSG_SAVEDATAPOINTER 129 
#define  MSG_TERM_IO_PROC 128 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  ROLE_TARGET ; 
 int SCB_LIST_NULL ; 
 int TRUE ; 
 int WIDEXFER ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct ahc_devinfo*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct ahc_devinfo*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct ahc_devinfo*,int) ; 
 struct ahc_syncrate* FUNC5 (struct ahc_softc*,struct ahc_initiator_tinfo*,int*,int*,int /*<<< orphan*/ ) ; 
 struct ahc_initiator_tinfo* FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,struct ahc_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int FUNC9 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahc_softc*,struct ahc_tmode_lstate*,size_t,int const,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*,struct ahc_tmode_lstate*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahc_softc*,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ahc_softc*,struct ahc_devinfo*,struct ahc_syncrate const*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahc_softc*,struct ahc_devinfo*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ahc_softc*,struct ahc_devinfo*,struct ahc_tmode_tstate*,struct ahc_initiator_tinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ahc_softc*,struct ahc_initiator_tinfo*,struct ahc_syncrate const*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ahc_softc*,struct ahc_initiator_tinfo*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,...) ; 

__attribute__((used)) static int
FUNC21(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
	struct	ahc_initiator_tinfo *tinfo;
	struct	ahc_tmode_tstate *tstate;
	int	reject;
	int	done;
	int	response;
	u_int	targ_scsirate;

	done = MSGLOOP_IN_PROG;
	response = FALSE;
	reject = FALSE;
	tinfo = FUNC6(ahc, devinfo->channel, devinfo->our_scsiid,
				    devinfo->target, &tstate);
	targ_scsirate = tinfo->scsirate;

	/*
	 * Parse as much of the message as is available,
	 * rejecting it if we don't support it.  When
	 * the entire message is available and has been
	 * handled, return MSGLOOP_MSGCOMPLETE, indicating
	 * that we have parsed an entire message.
	 *
	 * In the case of extended messages, we accept the length
	 * byte outright and perform more checking once we know the
	 * extended message type.
	 */
	switch (ahc->msgin_buf[0]) {
	case MSG_DISCONNECT:
	case MSG_SAVEDATAPOINTER:
	case MSG_CMDCOMPLETE:
	case MSG_RESTOREPOINTERS:
	case MSG_IGN_WIDE_RESIDUE:
		/*
		 * End our message loop as these are messages
		 * the sequencer handles on its own.
		 */
		done = MSGLOOP_TERMINATED;
		break;
	case MSG_MESSAGE_REJECT:
		response = FUNC8(ahc, devinfo);
		/* FALLTHROUGH */
	case MSG_NOOP:
		done = MSGLOOP_MSGCOMPLETE;
		break;
	case MSG_EXTENDED:
	{
		/* Wait for enough of the message to begin validation */
		if (ahc->msgin_index < 2)
			break;
		switch (ahc->msgin_buf[2]) {
		case MSG_EXT_SDTR:
		{
			const struct ahc_syncrate *syncrate;
			u_int	 period;
			u_int	 ppr_options;
			u_int	 offset;
			u_int	 saved_offset;
			
			if (ahc->msgin_buf[1] != MSG_EXT_SDTR_LEN) {
				reject = TRUE;
				break;
			}

			/*
			 * Wait until we have both args before validating
			 * and acting on this message.
			 *
			 * Add one to MSG_EXT_SDTR_LEN to account for
			 * the extended message preamble.
			 */
			if (ahc->msgin_index < (MSG_EXT_SDTR_LEN + 1))
				break;

			period = ahc->msgin_buf[3];
			ppr_options = 0;
			saved_offset = offset = ahc->msgin_buf[4];
			syncrate = FUNC5(ahc, tinfo, &period,
							   &ppr_options,
							   devinfo->role);
			FUNC18(ahc, tinfo, syncrate, &offset,
					    targ_scsirate & WIDEXFER,
					    devinfo->role);
			if (bootverbose) {
				FUNC20("(%s:%c:%d:%d): Received "
				       "SDTR period %x, offset %x\n\t"
				       "Filtered to period %x, offset %x\n",
				       FUNC10(ahc), devinfo->channel,
				       devinfo->target, devinfo->lun,
				       ahc->msgin_buf[3], saved_offset,
				       period, offset);
			}
			FUNC15(ahc, devinfo, 
					 syncrate, period,
					 offset, ppr_options,
					 AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
					 /*paused*/TRUE);

			/*
			 * See if we initiated Sync Negotiation
			 * and didn't have to fall down to async
			 * transfers.
			 */
			if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_SDTR, TRUE)) {
				/* We started it */
				if (saved_offset != offset) {
					/* Went too low - force async */
					reject = TRUE;
				}
			} else {
				/*
				 * Send our own SDTR in reply
				 */
				if (bootverbose
				 && devinfo->role == ROLE_INITIATOR) {
					FUNC20("(%s:%c:%d:%d): Target "
					       "Initiated SDTR\n",
					       FUNC10(ahc), devinfo->channel,
					       devinfo->target, devinfo->lun);
				}
				ahc->msgout_index = 0;
				ahc->msgout_len = 0;
				FUNC3(ahc, devinfo,
						   period, offset);
				ahc->msgout_index = 0;
				response = TRUE;
			}
			done = MSGLOOP_MSGCOMPLETE;
			break;
		}
		case MSG_EXT_WDTR:
		{
			u_int bus_width;
			u_int saved_width;
			u_int sending_reply;

			sending_reply = FALSE;
			if (ahc->msgin_buf[1] != MSG_EXT_WDTR_LEN) {
				reject = TRUE;
				break;
			}

			/*
			 * Wait until we have our arg before validating
			 * and acting on this message.
			 *
			 * Add one to MSG_EXT_WDTR_LEN to account for
			 * the extended message preamble.
			 */
			if (ahc->msgin_index < (MSG_EXT_WDTR_LEN + 1))
				break;

			bus_width = ahc->msgin_buf[3];
			saved_width = bus_width;
			FUNC19(ahc, tinfo, &bus_width,
					   devinfo->role);
			if (bootverbose) {
				FUNC20("(%s:%c:%d:%d): Received WDTR "
				       "%x filtered to %x\n",
				       FUNC10(ahc), devinfo->channel,
				       devinfo->target, devinfo->lun,
				       saved_width, bus_width);
			}

			if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_WDTR, TRUE)) {
				/*
				 * Don't send a WDTR back to the
				 * target, since we asked first.
				 * If the width went higher than our
				 * request, reject it.
				 */
				if (saved_width > bus_width) {
					reject = TRUE;
					FUNC20("(%s:%c:%d:%d): requested %dBit "
					       "transfers.  Rejecting...\n",
					       FUNC10(ahc), devinfo->channel,
					       devinfo->target, devinfo->lun,
					       8 * (0x01 << bus_width));
					bus_width = 0;
				}
			} else {
				/*
				 * Send our own WDTR in reply
				 */
				if (bootverbose
				 && devinfo->role == ROLE_INITIATOR) {
					FUNC20("(%s:%c:%d:%d): Target "
					       "Initiated WDTR\n",
					       FUNC10(ahc), devinfo->channel,
					       devinfo->target, devinfo->lun);
				}
				ahc->msgout_index = 0;
				ahc->msgout_len = 0;
				FUNC4(ahc, devinfo, bus_width);
				ahc->msgout_index = 0;
				response = TRUE;
				sending_reply = TRUE;
			}
			/*
			 * After a wide message, we are async, but
			 * some devices don't seem to honor this portion
			 * of the spec.  Force a renegotiation of the
			 * sync component of our transfer agreement even
			 * if our goal is async.  By updating our width
			 * after forcing the negotiation, we avoid
			 * renegotiating for width.
			 */
			FUNC17(ahc, devinfo, tstate,
					       tinfo, AHC_NEG_ALWAYS);
			FUNC16(ahc, devinfo, bus_width,
				      AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
				      /*paused*/TRUE);
			if (sending_reply == FALSE && reject == FALSE) {

				/*
				 * We will always have an SDTR to send.
				 */
				ahc->msgout_index = 0;
				ahc->msgout_len = 0;
				FUNC1(ahc, devinfo);
				ahc->msgout_index = 0;
				response = TRUE;
			}
			done = MSGLOOP_MSGCOMPLETE;
			break;
		}
		case MSG_EXT_PPR:
		{
			const struct ahc_syncrate *syncrate;
			u_int	period;
			u_int	offset;
			u_int	bus_width;
			u_int	ppr_options;
			u_int	saved_width;
			u_int	saved_offset;
			u_int	saved_ppr_options;

			if (ahc->msgin_buf[1] != MSG_EXT_PPR_LEN) {
				reject = TRUE;
				break;
			}

			/*
			 * Wait until we have all args before validating
			 * and acting on this message.
			 *
			 * Add one to MSG_EXT_PPR_LEN to account for
			 * the extended message preamble.
			 */
			if (ahc->msgin_index < (MSG_EXT_PPR_LEN + 1))
				break;

			period = ahc->msgin_buf[3];
			offset = ahc->msgin_buf[5];
			bus_width = ahc->msgin_buf[6];
			saved_width = bus_width;
			ppr_options = ahc->msgin_buf[7];
			/*
			 * According to the spec, a DT only
			 * period factor with no DT option
			 * set implies async.
			 */
			if ((ppr_options & MSG_EXT_PPR_DT_REQ) == 0
			 && period == 9)
				offset = 0;
			saved_ppr_options = ppr_options;
			saved_offset = offset;

			/*
			 * Mask out any options we don't support
			 * on any controller.  Transfer options are
			 * only available if we are negotiating wide.
			 */
			ppr_options &= MSG_EXT_PPR_DT_REQ;
			if (bus_width == 0)
				ppr_options = 0;

			FUNC19(ahc, tinfo, &bus_width,
					   devinfo->role);
			syncrate = FUNC5(ahc, tinfo, &period,
							   &ppr_options,
							   devinfo->role);
			FUNC18(ahc, tinfo, syncrate,
					    &offset, bus_width,
					    devinfo->role);

			if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_PPR, TRUE)) {
				/*
				 * If we are unable to do any of the
				 * requested options (we went too low),
				 * then we'll have to reject the message.
				 */
				if (saved_width > bus_width
				 || saved_offset != offset
				 || saved_ppr_options != ppr_options) {
					reject = TRUE;
					period = 0;
					offset = 0;
					bus_width = 0;
					ppr_options = 0;
					syncrate = NULL;
				}
			} else {
				if (devinfo->role != ROLE_TARGET)
					FUNC20("(%s:%c:%d:%d): Target "
					       "Initiated PPR\n",
					       FUNC10(ahc), devinfo->channel,
					       devinfo->target, devinfo->lun);
				else
					FUNC20("(%s:%c:%d:%d): Initiator "
					       "Initiated PPR\n",
					       FUNC10(ahc), devinfo->channel,
					       devinfo->target, devinfo->lun);
				ahc->msgout_index = 0;
				ahc->msgout_len = 0;
				FUNC2(ahc, devinfo, period, offset,
						  bus_width, ppr_options);
				ahc->msgout_index = 0;
				response = TRUE;
			}
			if (bootverbose) {
				FUNC20("(%s:%c:%d:%d): Received PPR width %x, "
				       "period %x, offset %x,options %x\n"
				       "\tFiltered to width %x, period %x, "
				       "offset %x, options %x\n",
				       FUNC10(ahc), devinfo->channel,
				       devinfo->target, devinfo->lun,
				       saved_width, ahc->msgin_buf[3],
				       saved_offset, saved_ppr_options,
				       bus_width, period, offset, ppr_options);
			}
			FUNC16(ahc, devinfo, bus_width,
				      AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
				      /*paused*/TRUE);
			FUNC15(ahc, devinfo,
					 syncrate, period,
					 offset, ppr_options,
					 AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
					 /*paused*/TRUE);
			done = MSGLOOP_MSGCOMPLETE;
			break;
		}
		default:
			/* Unknown extended message.  Reject it. */
			reject = TRUE;
			break;
		}
		break;
	}
#ifdef AHC_TARGET_MODE
	case MSG_BUS_DEV_RESET:
		ahc_handle_devreset(ahc, devinfo,
				    CAM_BDR_SENT,
				    "Bus Device Reset Received",
				    /*verbose_level*/0);
		ahc_restart(ahc);
		done = MSGLOOP_TERMINATED;
		break;
	case MSG_ABORT_TAG:
	case MSG_ABORT:
	case MSG_CLEAR_QUEUE:
	{
		int tag;

		/* Target mode messages */
		if (devinfo->role != ROLE_TARGET) {
			reject = TRUE;
			break;
		}
		tag = SCB_LIST_NULL;
		if (ahc->msgin_buf[0] == MSG_ABORT_TAG)
			tag = ahc_inb(ahc, INITIATOR_TAG);
		ahc_abort_scbs(ahc, devinfo->target, devinfo->channel,
			       devinfo->lun, tag, ROLE_TARGET,
			       CAM_REQ_ABORTED);

		tstate = ahc->enabled_targets[devinfo->our_scsiid];
		if (tstate != NULL) {
			struct ahc_tmode_lstate* lstate;

			lstate = tstate->enabled_luns[devinfo->lun];
			if (lstate != NULL) {
				ahc_queue_lstate_event(ahc, lstate,
						       devinfo->our_scsiid,
						       ahc->msgin_buf[0],
						       /*arg*/tag);
				ahc_send_lstate_events(ahc, lstate);
			}
		}
		ahc_restart(ahc);
		done = MSGLOOP_TERMINATED;
		break;
	}
#endif
	case MSG_TERM_IO_PROC:
	default:
		reject = TRUE;
		break;
	}

	if (reject) {
		/*
		 * Setup to reject the message.
		 */
		ahc->msgout_index = 0;
		ahc->msgout_len = 1;
		ahc->msgout_buf[0] = MSG_MESSAGE_REJECT;
		done = MSGLOOP_MSGCOMPLETE;
		response = TRUE;
	}

	if (done != MSGLOOP_IN_PROG && !response)
		/* Clear the outgoing message buffer */
		ahc->msgout_len = 0;

	return (done);
}