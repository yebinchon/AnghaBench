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
typedef  int /*<<< orphan*/  u_int ;
struct scb {TYPE_3__* hscb; int /*<<< orphan*/  io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int msg_flags; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct TYPE_5__ {int transport_version; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ period; int ppr_options; int transport_version; scalar_t__ offset; } ;
struct ahd_initiator_tinfo {TYPE_2__ curr; TYPE_1__ goal; } ;
struct ahd_devinfo {int /*<<< orphan*/  target; int /*<<< orphan*/  channel; int /*<<< orphan*/  lun; int /*<<< orphan*/  our_scsiid; } ;
struct TYPE_6__ {int control; int /*<<< orphan*/  scsiid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHDMSG_1B ; 
 int /*<<< orphan*/  AHDMSG_EXT ; 
 int /*<<< orphan*/  AHD_QUEUE_BASIC ; 
 int /*<<< orphan*/  AHD_QUEUE_NONE ; 
 scalar_t__ AHD_SYNCRATE_DT ; 
 scalar_t__ AHD_SYNCRATE_PACED ; 
 int AHD_TRANS_ACTIVE ; 
 int AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LAST_MSG ; 
 int MSG_EXT_PPR ; 
 int MSG_EXT_PPR_DT_REQ ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int MSG_EXT_PPR_QAS_REQ ; 
 int MSG_EXT_SDTR ; 
 int MSG_EXT_WDTR ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int MSG_FLAG_EXPECT_PPR_BUSFREE ; 
 int MSG_FLAG_IU_REQ_CHANGED ; 
 int MSG_IDENTIFYFLAG ; 
 int MSG_ORDERED_TASK ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int MSG_SIMPLE_TASK ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ahd_initiator_tinfo* FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC13 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,int /*<<< orphan*/ ,struct ahd_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct scb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC23(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
	/*
	 * What we care about here is if we had an
	 * outstanding SDTR or WDTR message for this
	 * target.  If we did, this is a signal that
	 * the target is refusing negotiation.
	 */
	struct scb *scb;
	struct ahd_initiator_tinfo *tinfo;
	struct ahd_tmode_tstate *tstate;
	u_int scb_index;
	u_int last_msg;
	int   response = 0;

	scb_index = FUNC10(ahd);
	scb = FUNC13(ahd, scb_index);
	tinfo = FUNC8(ahd, devinfo->channel,
				    devinfo->our_scsiid,
				    devinfo->target, &tstate);
	/* Might be necessary */
	last_msg = FUNC11(ahd, LAST_MSG);

	if (FUNC17(ahd, AHDMSG_EXT, MSG_EXT_PPR, /*full*/FALSE)) {
		if (FUNC17(ahd, AHDMSG_EXT, MSG_EXT_PPR, /*full*/TRUE)
		 && tinfo->goal.period <= AHD_SYNCRATE_PACED) {
			/*
			 * Target may not like our SPI-4 PPR Options.
			 * Attempt to negotiate 80MHz which will turn
			 * off these options.
			 */
			if (bootverbose) {
				FUNC22("(%s:%c:%d:%d): PPR Rejected. "
				       "Trying simple U160 PPR\n",
				       FUNC14(ahd), devinfo->channel,
				       devinfo->target, devinfo->lun);
			}
			tinfo->goal.period = AHD_SYNCRATE_DT;
			tinfo->goal.ppr_options &= MSG_EXT_PPR_IU_REQ
						|  MSG_EXT_PPR_QAS_REQ
						|  MSG_EXT_PPR_DT_REQ;
		} else {
			/*
			 * Target does not support the PPR message.
			 * Attempt to negotiate SPI-2 style.
			 */
			if (bootverbose) {
				FUNC22("(%s:%c:%d:%d): PPR Rejected. "
				       "Trying WDTR/SDTR\n",
				       FUNC14(ahd), devinfo->channel,
				       devinfo->target, devinfo->lun);
			}
			tinfo->goal.ppr_options = 0;
			tinfo->curr.transport_version = 2;
			tinfo->goal.transport_version = 2;
		}
		ahd->msgout_index = 0;
		ahd->msgout_len = 0;
		FUNC6(ahd, devinfo);
		ahd->msgout_index = 0;
		response = 1;
	} else if (FUNC17(ahd, AHDMSG_EXT, MSG_EXT_WDTR, /*full*/FALSE)) {

		/* note 8bit xfers */
		FUNC22("(%s:%c:%d:%d): refuses WIDE negotiation.  Using "
		       "8bit transfers\n", FUNC14(ahd),
		       devinfo->channel, devinfo->target, devinfo->lun);
		FUNC21(ahd, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
			      AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
			      /*paused*/TRUE);
		/*
		 * No need to clear the sync rate.  If the target
		 * did not accept the command, our syncrate is
		 * unaffected.  If the target started the negotiation,
		 * but rejected our response, we already cleared the
		 * sync rate before sending our WDTR.
		 */
		if (tinfo->goal.offset != tinfo->curr.offset) {

			/* Start the sync negotiation */
			ahd->msgout_index = 0;
			ahd->msgout_len = 0;
			FUNC6(ahd, devinfo);
			ahd->msgout_index = 0;
			response = 1;
		}
	} else if (FUNC17(ahd, AHDMSG_EXT, MSG_EXT_SDTR, /*full*/FALSE)) {
		/* note asynch xfers and clear flag */
		FUNC18(ahd, devinfo, /*period*/0,
				 /*offset*/0, /*ppr_options*/0,
				 AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
				 /*paused*/TRUE);
		FUNC22("(%s:%c:%d:%d): refuses synchronous negotiation. "
		       "Using asynchronous transfers\n",
		       FUNC14(ahd), devinfo->channel,
		       devinfo->target, devinfo->lun);
	} else if ((scb->hscb->control & MSG_SIMPLE_TASK) != 0) {
		int tag_type;
		int mask;

		tag_type = (scb->hscb->control & MSG_SIMPLE_TASK);

		if (tag_type == MSG_SIMPLE_TASK) {
			FUNC22("(%s:%c:%d:%d): refuses tagged commands.  "
			       "Performing non-tagged I/O\n", FUNC14(ahd),
			       devinfo->channel, devinfo->target, devinfo->lun);
			FUNC19(ahd, scb->io_ctx, devinfo, AHD_QUEUE_NONE);
			mask = ~0x23;
		} else {
			FUNC22("(%s:%c:%d:%d): refuses %s tagged commands.  "
			       "Performing simple queue tagged I/O only\n",
			       FUNC14(ahd), devinfo->channel, devinfo->target,
			       devinfo->lun, tag_type == MSG_ORDERED_TASK
			       ? "ordered" : "head of queue");
			FUNC19(ahd, scb->io_ctx, devinfo, AHD_QUEUE_BASIC);
			mask = ~0x03;
		}

		/*
		 * Resend the identify for this CCB as the target
		 * may believe that the selection is invalid otherwise.
		 */
		FUNC15(ahd, SCB_CONTROL,
			 FUNC12(ahd, SCB_CONTROL) & mask);
	 	scb->hscb->control &= mask;
		FUNC20(scb, /*enabled*/FALSE,
					/*type*/MSG_SIMPLE_TASK);
		FUNC15(ahd, MSG_OUT, MSG_IDENTIFYFLAG);
		FUNC5(ahd);
		FUNC7(ahd, FUNC0(scb->hscb->scsiid, devinfo->lun),
			     FUNC3(scb));

		/*
		 * Requeue all tagged commands for this target
		 * currently in our possession so they can be
		 * converted to untagged commands.
		 */
		FUNC16(ahd, FUNC4(ahd, scb),
				   FUNC1(ahd, scb),
				   FUNC2(scb), /*tag*/SCB_LIST_NULL,
				   ROLE_INITIATOR, CAM_REQUEUE_REQ,
				   SEARCH_COMPLETE);
	} else if (FUNC17(ahd, AHDMSG_1B, MSG_IDENTIFYFLAG, TRUE)) {
		/*
		 * Most likely the device believes that we had
		 * previously negotiated packetized.
		 */
		ahd->msg_flags |= MSG_FLAG_EXPECT_PPR_BUSFREE
			       |  MSG_FLAG_IU_REQ_CHANGED;

		FUNC9(ahd, devinfo);
		ahd->msgout_index = 0;
		ahd->msgout_len = 0;
		FUNC6(ahd, devinfo);
		ahd->msgout_index = 0;
		response = 1;
	} else {
		/*
		 * Otherwise, we ignore it.
		 */
		FUNC22("%s:%c:%d: Message reject for %x -- ignored\n",
		       FUNC14(ahd), devinfo->channel, devinfo->target,
		       last_msg);
	}
	return (response);
}