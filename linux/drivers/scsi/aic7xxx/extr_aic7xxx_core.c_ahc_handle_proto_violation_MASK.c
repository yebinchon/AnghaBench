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
struct ahc_softc {int msgout_len; int /*<<< orphan*/  msg_type; scalar_t__ msgout_index; int /*<<< orphan*/ * msgout_buf; } ;
struct ahc_devinfo {int dummy; } ;
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
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int STATUS_RCVD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 struct scb* FUNC5 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahc_softc*,struct scb*) ; 
 int FUNC10 (struct ahc_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void
FUNC13(struct ahc_softc *ahc)
{
	struct	ahc_devinfo devinfo;
	struct	scb *scb;
	u_int	scbid;
	u_int	seq_flags;
	u_int	curphase;
	u_int	lastphase;
	int	found;

	FUNC2(ahc, &devinfo);
	scbid = FUNC3(ahc, SCB_TAG);
	scb = FUNC5(ahc, scbid);
	seq_flags = FUNC3(ahc, SEQ_FLAGS);
	curphase = FUNC3(ahc, SCSISIGI) & PHASE_MASK;
	lastphase = FUNC3(ahc, LASTPHASE);
	if ((seq_flags & NOT_IDENTIFIED) != 0) {

		/*
		 * The reconnecting target either did not send an
		 * identify message, or did, but we didn't find an SCB
		 * to match.
		 */
		FUNC8(ahc, &devinfo);
		FUNC12("Target did not send an IDENTIFY message. "
		       "LASTPHASE = 0x%x.\n", lastphase);
		scb = NULL;
	} else if (scb == NULL) {
		/*
		 * We don't seem to have an SCB active for this
		 * transaction.  Print an error and reset the bus.
		 */
		FUNC8(ahc, &devinfo);
		FUNC12("No SCB found during protocol violation\n");
		goto proto_violation_reset;
	} else {
		FUNC11(scb, CAM_SEQUENCE_FAIL);
		if ((seq_flags & NO_CDB_SENT) != 0) {
			FUNC9(ahc, scb);
			FUNC12("No or incomplete CDB sent to device.\n");
		} else if ((FUNC3(ahc, SCB_CONTROL) & STATUS_RCVD) == 0) {
			/*
			 * The target never bothered to provide status to
			 * us prior to completing the command.  Since we don't
			 * know the disposition of this command, we must attempt
			 * to abort it.  Assert ATN and prepare to send an abort
			 * message.
			 */
			FUNC9(ahc, scb);
			FUNC12("Completed command without status.\n");
		} else {
			FUNC9(ahc, scb);
			FUNC12("Unknown protocol violation.\n");
			FUNC1(ahc);
		}
	}
	if ((lastphase & ~P_DATAIN_DT) == 0
	 || lastphase == P_COMMAND) {
proto_violation_reset:
		/*
		 * Target either went directly to data/command
		 * phase or didn't respond to our ATN.
		 * The only safe thing to do is to blow
		 * it away with a bus reset.
		 */
		found = FUNC10(ahc, 'A', TRUE);
		FUNC12("%s: Issued Channel %c Bus Reset. "
		       "%d SCBs aborted\n", FUNC6(ahc), 'A', found);
	} else {
		/*
		 * Leave the selection hardware off in case
		 * this abort attempt will affect yet to
		 * be sent commands.
		 */
		FUNC7(ahc, SCSISEQ,
			 FUNC3(ahc, SCSISEQ) & ~ENSELO);
		FUNC0(ahc);
		FUNC7(ahc, MSG_OUT, HOST_MSG);
		if (scb == NULL) {
			FUNC8(ahc, &devinfo);
			ahc->msgout_buf[0] = MSG_ABORT_TASK;
			ahc->msgout_len = 1;
			ahc->msgout_index = 0;
			ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
		} else {
			FUNC9(ahc, scb);
			scb->flags |= SCB_ABORT;
		}
		FUNC12("Protocol violation %s.  Attempting to abort.\n",
		       FUNC4(curphase)->phasemsg);
	}
}