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
typedef  int u_int ;
struct scb {int /*<<< orphan*/  flags; } ;
struct ahd_softc {int msgout_len; int /*<<< orphan*/  msg_type; scalar_t__ msgout_index; int /*<<< orphan*/ * msgout_buf; } ;
struct ahd_devinfo {int dummy; } ;
struct TYPE_2__ {int phasemsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_SEQUENCE_FAIL ; 
 int ENSELO ; 
 int HOST_MSG ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int /*<<< orphan*/  MSG_ABORT_TASK ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MSG_TYPE_INITIATOR_MSGOUT ; 
 int NOT_IDENTIFIED ; 
 int NO_CDB_SENT ; 
 int PHASE_MASK ; 
 int P_COMMAND ; 
 int P_DATAIN_DT ; 
 int /*<<< orphan*/  SCB_ABORT ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int STATUS_RCVD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int FUNC3 (struct ahd_softc*) ; 
 int FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int) ; 
 struct scb* FUNC7 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,struct scb*) ; 
 int FUNC12 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static void
FUNC15(struct ahd_softc *ahd)
{
	struct	ahd_devinfo devinfo;
	struct	scb *scb;
	u_int	scbid;
	u_int	seq_flags;
	u_int	curphase;
	u_int	lastphase;
	int	found;

	FUNC2(ahd, &devinfo);
	scbid = FUNC3(ahd);
	scb = FUNC7(ahd, scbid);
	seq_flags = FUNC4(ahd, SEQ_FLAGS);
	curphase = FUNC4(ahd, SCSISIGI) & PHASE_MASK;
	lastphase = FUNC4(ahd, LASTPHASE);
	if ((seq_flags & NOT_IDENTIFIED) != 0) {

		/*
		 * The reconnecting target either did not send an
		 * identify message, or did, but we didn't find an SCB
		 * to match.
		 */
		FUNC10(ahd, &devinfo);
		FUNC14("Target did not send an IDENTIFY message. "
		       "LASTPHASE = 0x%x.\n", lastphase);
		scb = NULL;
	} else if (scb == NULL) {
		/*
		 * We don't seem to have an SCB active for this
		 * transaction.  Print an error and reset the bus.
		 */
		FUNC10(ahd, &devinfo);
		FUNC14("No SCB found during protocol violation\n");
		goto proto_violation_reset;
	} else {
		FUNC13(scb, CAM_SEQUENCE_FAIL);
		if ((seq_flags & NO_CDB_SENT) != 0) {
			FUNC11(ahd, scb);
			FUNC14("No or incomplete CDB sent to device.\n");
		} else if ((FUNC5(ahd, SCB_CONTROL)
			  & STATUS_RCVD) == 0) {
			/*
			 * The target never bothered to provide status to
			 * us prior to completing the command.  Since we don't
			 * know the disposition of this command, we must attempt
			 * to abort it.  Assert ATN and prepare to send an abort
			 * message.
			 */
			FUNC11(ahd, scb);
			FUNC14("Completed command without status.\n");
		} else {
			FUNC11(ahd, scb);
			FUNC14("Unknown protocol violation.\n");
			FUNC1(ahd);
		}
	}
	if ((lastphase & ~P_DATAIN_DT) == 0
	 || lastphase == P_COMMAND) {
proto_violation_reset:
		/*
		 * Target either went directly to data
		 * phase or didn't respond to our ATN.
		 * The only safe thing to do is to blow
		 * it away with a bus reset.
		 */
		found = FUNC12(ahd, 'A', TRUE);
		FUNC14("%s: Issued Channel %c Bus Reset. "
		       "%d SCBs aborted\n", FUNC8(ahd), 'A', found);
	} else {
		/*
		 * Leave the selection hardware off in case
		 * this abort attempt will affect yet to
		 * be sent commands.
		 */
		FUNC9(ahd, SCSISEQ0,
			 FUNC4(ahd, SCSISEQ0) & ~ENSELO);
		FUNC0(ahd);
		FUNC9(ahd, MSG_OUT, HOST_MSG);
		if (scb == NULL) {
			FUNC10(ahd, &devinfo);
			ahd->msgout_buf[0] = MSG_ABORT_TASK;
			ahd->msgout_len = 1;
			ahd->msgout_index = 0;
			ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
		} else {
			FUNC11(ahd, scb);
			scb->flags |= SCB_ABORT;
		}
		FUNC14("Protocol violation %s.  Attempting to abort.\n",
		       FUNC6(curphase)->phasemsg);
	}
}