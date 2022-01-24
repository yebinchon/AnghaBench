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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct scb {scalar_t__ hscb; } ;
struct hardware_scb {int dummy; } ;
struct ahd_softc {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int AHD_MODE_CCHAN ; 
 int AHD_MODE_SCSI ; 
 int /*<<< orphan*/  AHD_UPDATE_PEND_CMDS ; 
 int ARRDONE ; 
 int CCARREN ; 
 scalar_t__ CCSCBCTL ; 
 int CCSCBDIR ; 
 int CCSCBDONE ; 
 int CCSCBEN ; 
 int /*<<< orphan*/  COMPLETE_DMA_SCB_HEAD ; 
 int /*<<< orphan*/  COMPLETE_DMA_SCB_TAIL ; 
 int /*<<< orphan*/  COMPLETE_ON_QFREEZE_HEAD ; 
 int /*<<< orphan*/  COMPLETE_SCB_HEAD ; 
 int /*<<< orphan*/  GSFIFO ; 
 int LQIGSAVAIL ; 
 scalar_t__ LQISTAT2 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ SCB_BASE ; 
 int SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT_COMPLETE ; 
 scalar_t__ SCB_RESIDUAL_SGPTR ; 
 scalar_t__ SCB_SCSI_STATUS ; 
 scalar_t__ SCB_SGPTR ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int SG_FULL_RESID ; 
 int SG_LIST_NULL ; 
 int SG_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ahd_softc*) ; 
 int FUNC4 (struct ahd_softc*,scalar_t__) ; 
 int FUNC5 (struct ahd_softc*,scalar_t__) ; 
 int FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC8 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*) ; 
 scalar_t__ FUNC16 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC20(struct ahd_softc *ahd)
{
	struct		scb *scb;
	ahd_mode_state	saved_modes;
	u_int		saved_scbptr;
	u_int		ccscbctl;
	u_int		scbid;
	u_int		next_scbid;

	saved_modes = FUNC15(ahd);

	/*
	 * Flush the good status FIFO for completed packetized commands.
	 */
	FUNC17(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	saved_scbptr = FUNC3(ahd);
	while ((FUNC4(ahd, LQISTAT2) & LQIGSAVAIL) != 0) {
		u_int fifo_mode;
		u_int i;
		
		scbid = FUNC6(ahd, GSFIFO);
		scb = FUNC8(ahd, scbid);
		if (scb == NULL) {
			FUNC19("%s: Warning - GSFIFO SCB %d invalid\n",
			       FUNC9(ahd), scbid);
			continue;
		}
		/*
		 * Determine if this transaction is still active in
		 * any FIFO.  If it is, we must flush that FIFO to
		 * the host before completing the  command.
		 */
		fifo_mode = 0;
rescan_fifos:
		for (i = 0; i < 2; i++) {
			/* Toggle to the other mode. */
			fifo_mode ^= 1;
			FUNC17(ahd, fifo_mode, fifo_mode);

			if (FUNC16(ahd, scb) == 0)
				continue;

			FUNC13(ahd, scb);

			/*
			 * Running this FIFO may cause a CFG4DATA for
			 * this same transaction to assert in the other
			 * FIFO or a new snapshot SAVEPTRS interrupt
			 * in this FIFO.  Even running a FIFO may not
			 * clear the transaction if we are still waiting
			 * for data to drain to the host. We must loop
			 * until the transaction is not active in either
			 * FIFO just to be sure.  Reset our loop counter
			 * so we will visit both FIFOs again before
			 * declaring this transaction finished.  We
			 * also delay a bit so that status has a chance
			 * to change before we look at this FIFO again.
			 */
			FUNC2(200);
			goto rescan_fifos;
		}
		FUNC17(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		FUNC18(ahd, scbid);
		if ((FUNC5(ahd, SCB_SGPTR) & SG_LIST_NULL) == 0
		 && ((FUNC5(ahd, SCB_SGPTR) & SG_FULL_RESID) != 0
		  || (FUNC5(ahd, SCB_RESIDUAL_SGPTR)
		      & SG_LIST_NULL) != 0)) {
			u_int comp_head;

			/*
			 * The transfer completed with a residual.
			 * Place this SCB on the complete DMA list
			 * so that we update our in-core copy of the
			 * SCB before completing the command.
			 */
			FUNC10(ahd, SCB_SCSI_STATUS, 0);
			FUNC10(ahd, SCB_SGPTR,
				 FUNC5(ahd, SCB_SGPTR)
				 | SG_STATUS_VALID);
			FUNC11(ahd, SCB_TAG, scbid);
			FUNC11(ahd, SCB_NEXT_COMPLETE, SCB_LIST_NULL);
			comp_head = FUNC6(ahd, COMPLETE_DMA_SCB_HEAD);
			if (FUNC0(comp_head)) {
				FUNC11(ahd, COMPLETE_DMA_SCB_HEAD, scbid);
				FUNC11(ahd, COMPLETE_DMA_SCB_TAIL, scbid);
			} else {
				u_int tail;

				tail = FUNC6(ahd, COMPLETE_DMA_SCB_TAIL);
				FUNC18(ahd, tail);
				FUNC11(ahd, SCB_NEXT_COMPLETE, scbid);
				FUNC11(ahd, COMPLETE_DMA_SCB_TAIL, scbid);
				FUNC18(ahd, scbid);
			}
		} else
			FUNC1(ahd, scb);
	}
	FUNC18(ahd, saved_scbptr);

	/*
	 * Setup for command channel portion of flush.
	 */
	FUNC17(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);

	/*
	 * Wait for any inprogress DMA to complete and clear DMA state
	 * if this is for an SCB in the qinfifo.
	 */
	while (((ccscbctl = FUNC4(ahd, CCSCBCTL)) & (CCARREN|CCSCBEN)) != 0) {

		if ((ccscbctl & (CCSCBDIR|CCARREN)) == (CCSCBDIR|CCARREN)) {
			if ((ccscbctl & ARRDONE) != 0)
				break;
		} else if ((ccscbctl & CCSCBDONE) != 0)
			break;
		FUNC2(200);
	}
	/*
	 * We leave the sequencer to cleanup in the case of DMA's to
	 * update the qoutfifo.  In all other cases (DMA's to the
	 * chip or a push of an SCB from the COMPLETE_DMA_SCB list),
	 * we disable the DMA engine so that the sequencer will not
	 * attempt to handle the DMA completion.
	 */
	if ((ccscbctl & CCSCBDIR) != 0 || (ccscbctl & ARRDONE) != 0)
		FUNC10(ahd, CCSCBCTL, ccscbctl & ~(CCARREN|CCSCBEN));

	/*
	 * Complete any SCBs that just finished
	 * being DMA'ed into the qoutfifo.
	 */
	FUNC14(ahd);

	saved_scbptr = FUNC3(ahd);
	/*
	 * Manually update/complete any completed SCBs that are waiting to be
	 * DMA'ed back up to the host.
	 */
	scbid = FUNC6(ahd, COMPLETE_DMA_SCB_HEAD);
	while (!FUNC0(scbid)) {
		uint8_t *hscb_ptr;
		u_int	 i;
		
		FUNC18(ahd, scbid);
		next_scbid = FUNC7(ahd, SCB_NEXT_COMPLETE);
		scb = FUNC8(ahd, scbid);
		if (scb == NULL) {
			FUNC19("%s: Warning - DMA-up and complete "
			       "SCB %d invalid\n", FUNC9(ahd), scbid);
			continue;
		}
		hscb_ptr = (uint8_t *)scb->hscb;
		for (i = 0; i < sizeof(struct hardware_scb); i++)
			*hscb_ptr++ = FUNC5(ahd, SCB_BASE + i);

		FUNC1(ahd, scb);
		scbid = next_scbid;
	}
	FUNC11(ahd, COMPLETE_DMA_SCB_HEAD, SCB_LIST_NULL);
	FUNC11(ahd, COMPLETE_DMA_SCB_TAIL, SCB_LIST_NULL);

	scbid = FUNC6(ahd, COMPLETE_ON_QFREEZE_HEAD);
	while (!FUNC0(scbid)) {

		FUNC18(ahd, scbid);
		next_scbid = FUNC7(ahd, SCB_NEXT_COMPLETE);
		scb = FUNC8(ahd, scbid);
		if (scb == NULL) {
			FUNC19("%s: Warning - Complete Qfrz SCB %d invalid\n",
			       FUNC9(ahd), scbid);
			continue;
		}

		FUNC1(ahd, scb);
		scbid = next_scbid;
	}
	FUNC11(ahd, COMPLETE_ON_QFREEZE_HEAD, SCB_LIST_NULL);

	scbid = FUNC6(ahd, COMPLETE_SCB_HEAD);
	while (!FUNC0(scbid)) {

		FUNC18(ahd, scbid);
		next_scbid = FUNC7(ahd, SCB_NEXT_COMPLETE);
		scb = FUNC8(ahd, scbid);
		if (scb == NULL) {
			FUNC19("%s: Warning - Complete SCB %d invalid\n",
			       FUNC9(ahd), scbid);
			continue;
		}

		FUNC1(ahd, scb);
		scbid = next_scbid;
	}
	FUNC11(ahd, COMPLETE_SCB_HEAD, SCB_LIST_NULL);

	/*
	 * Restore state.
	 */
	FUNC18(ahd, saved_scbptr);
	FUNC12(ahd, saved_modes);
	ahd->flags |= AHD_UPDATE_PEND_CMDS;
}