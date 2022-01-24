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
struct ahc_softc {int pause; int flags; int unsolicited_ints; int chip; int features; int /*<<< orphan*/  (* bus_intr ) (struct ahc_softc*) ;} ;

/* Variables and functions */
 int AHC_ALL_INTERRUPTS ; 
 int AHC_EDGE_INTERRUPT ; 
 int AHC_PCI ; 
 int AHC_REMOVABLE ; 
 int AHC_TARGETROLE ; 
 int BRKADRINT ; 
 int /*<<< orphan*/  CLRCMDINT ; 
 int /*<<< orphan*/  CLRINT ; 
 int CMDCMPLT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int INTEN ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 int PCIERRSTAT ; 
 int SCSIINT ; 
 int SEQINT ; 
 scalar_t__ FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int) ; 
 int FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahc_softc*) ; 

int
FUNC11(struct ahc_softc *ahc)
{
	u_int	intstat;

	if ((ahc->pause & INTEN) == 0) {
		/*
		 * Our interrupt is not enabled on the chip
		 * and may be disabled for re-entrancy reasons,
		 * so just return.  This is likely just a shared
		 * interrupt.
		 */
		return (0);
	}
	/*
	 * Instead of directly reading the interrupt status register,
	 * infer the cause of the interrupt by checking our in-core
	 * completion queues.  This avoids a costly PCI bus read in
	 * most cases.
	 */
	if ((ahc->flags & (AHC_ALL_INTERRUPTS|AHC_EDGE_INTERRUPT)) == 0
	 && (FUNC0(ahc) != 0))
		intstat = CMDCMPLT;
	else {
		intstat = FUNC5(ahc, INTSTAT);
	}

	if ((intstat & INT_PEND) == 0) {
#if AHC_PCI_CONFIG > 0
		if (ahc->unsolicited_ints > 500) {
			ahc->unsolicited_ints = 0;
			if ((ahc->chip & AHC_PCI) != 0
			 && (ahc_inb(ahc, ERROR) & PCIERRSTAT) != 0)
				ahc->bus_intr(ahc);
		}
#endif
		ahc->unsolicited_ints++;
		return (0);
	}
	ahc->unsolicited_ints = 0;

	if (intstat & CMDCMPLT) {
		FUNC6(ahc, CLRINT, CLRCMDINT);

		/*
		 * Ensure that the chip sees that we've cleared
		 * this interrupt before we walk the output fifo.
		 * Otherwise, we may, due to posted bus writes,
		 * clear the interrupt after we finish the scan,
		 * and after the sequencer has added new entries
		 * and asserted the interrupt again.
		 */
		FUNC1(ahc);
		FUNC8(ahc);
#ifdef AHC_TARGET_MODE
		if ((ahc->flags & AHC_TARGETROLE) != 0)
			ahc_run_tqinfifo(ahc, /*paused*/FALSE);
#endif
	}

	/*
	 * Handle statuses that may invalidate our cached
	 * copy of INTSTAT separately.
	 */
	if (intstat == 0xFF && (ahc->features & AHC_REMOVABLE) != 0) {
		/* Hot eject.  Do nothing */
	} else if (intstat & BRKADRINT) {
		FUNC2(ahc);
	} else if ((intstat & (SEQINT|SCSIINT)) != 0) {

		FUNC7(ahc);

		if ((intstat & SEQINT) != 0)
			FUNC4(ahc, intstat);

		if ((intstat & SCSIINT) != 0)
			FUNC3(ahc, intstat);
	}
	return (1);
}