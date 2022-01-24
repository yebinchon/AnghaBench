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
struct qlogicpti {int swsreg; int /*<<< orphan*/  qpti_id; scalar_t__ differential; int /*<<< orphan*/  sreg; } ;

/* Variables and functions */
 int SREG_DSENSE ; 
 int SREG_FUSE ; 
 int SREG_TPOWER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qlogicpti *qpti)
{
	int curstat = FUNC1(qpti->sreg);

	curstat &= 0xf0;
	if (!(curstat & SREG_FUSE) && (qpti->swsreg & SREG_FUSE))
		FUNC0("qlogicpti%d: Fuse returned to normal state.\n", qpti->qpti_id);
	if (!(curstat & SREG_TPOWER) && (qpti->swsreg & SREG_TPOWER))
		FUNC0("qlogicpti%d: termpwr back to normal state.\n", qpti->qpti_id);
	if (curstat != qpti->swsreg) {
		int error = 0;
		if (curstat & SREG_FUSE) {
			error++;
			FUNC0("qlogicpti%d: Fuse is open!\n", qpti->qpti_id);
		}
		if (curstat & SREG_TPOWER) {
			error++;
			FUNC0("qlogicpti%d: termpwr failure\n", qpti->qpti_id);
		}
		if (qpti->differential &&
		    (curstat & SREG_DSENSE) != SREG_DSENSE) {
			error++;
			FUNC0("qlogicpti%d: You have a single ended device on a "
			       "differential bus!  Please fix!\n", qpti->qpti_id);
		}
		qpti->swsreg = curstat;
		return error;
	}
	return 0;
}