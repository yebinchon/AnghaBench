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
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int ENSELO ; 
 int /*<<< orphan*/  SCBPTR ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  WAITING_SCBH ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int
FUNC3(struct ahc_softc *ahc, u_int scbpos, u_int prev)
{
	u_int curscb, next;

	/*
	 * Select the SCB we want to abort and
	 * pull the next pointer out of it.
	 */
	curscb = FUNC1(ahc, SCBPTR);
	FUNC2(ahc, SCBPTR, scbpos);
	next = FUNC1(ahc, SCB_NEXT);

	/* Clear the necessary fields */
	FUNC2(ahc, SCB_CONTROL, 0);

	FUNC0(ahc);

	/* update the waiting list */
	if (prev == SCB_LIST_NULL) {
		/* First in the list */
		FUNC2(ahc, WAITING_SCBH, next); 

		/*
		 * Ensure we aren't attempting to perform
		 * selection for this entry.
		 */
		FUNC2(ahc, SCSISEQ, (FUNC1(ahc, SCSISEQ) & ~ENSELO));
	} else {
		/*
		 * Select the scb that pointed to us 
		 * and update its next pointer.
		 */
		FUNC2(ahc, SCBPTR, prev);
		FUNC2(ahc, SCB_NEXT, next);
	}

	/*
	 * Point us back at the original scb position.
	 */
	FUNC2(ahc, SCBPTR, curscb);
	return next;
}