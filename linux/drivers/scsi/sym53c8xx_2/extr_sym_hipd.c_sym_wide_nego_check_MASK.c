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
typedef  scalar_t__ u_char ;
struct sym_hcb {scalar_t__* msgin; scalar_t__ maxwide; scalar_t__* msgout; } ;
struct sym_ccb {int target; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_NEGO ; 
 scalar_t__ M_NOOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int,scalar_t__) ; 

__attribute__((used)) static int  
FUNC4(struct sym_hcb *np, int req, struct sym_ccb *cp)
{
	int target = cp->target;
	u_char	chg, wide;

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC2(np, target, "wide msgin", np->msgin);
	}

	/*
	 *  Get requested values.
	 */
	chg  = 0;
	wide = np->msgin[3];

	/*
	 *  Check values against our limits.
	 */
	if (wide > np->maxwide) {
		chg = 1;
		wide = np->maxwide;
	}

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC1(cp->cmd, "wdtr: wide=%d chg=%d.\n",
				wide, chg);
	}

	/*
	 *  If it was an answer we want to change, 
	 *  then it isn't acceptable. Reject it.
	 */
	if (!req && chg)
		goto reject_it;

	/*
	 *  Apply new values.
	 */
	FUNC3 (np, target, wide);

	/*
	 *  It was an answer. We are done.
	 */
	if (!req)
		return 0;

	/*
	 *  It was a request. Prepare an answer message.
	 */
	FUNC0(np->msgout, wide);

	np->msgin [0] = M_NOOP;

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC2(np, target, "wide msgout", np->msgout);
	}

	return 0;

reject_it:
	return -1;
}