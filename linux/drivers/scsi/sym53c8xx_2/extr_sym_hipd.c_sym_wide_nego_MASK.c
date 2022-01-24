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
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  period; } ;
struct sym_tcb {TYPE_1__ tgoal; } ;
struct sym_hcb {int /*<<< orphan*/  msgout; } ;
struct sym_ccb {scalar_t__ nego_status; int /*<<< orphan*/  target; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_NEGO ; 
 scalar_t__ HS_BUSY ; 
 scalar_t__ HS_NEGOTIATE ; 
 int /*<<< orphan*/  HS_PRT ; 
 scalar_t__ FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ NS_SYNC ; 
 scalar_t__ NS_WIDE ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clrack ; 
 int /*<<< orphan*/  msg_bad ; 
 int /*<<< orphan*/  sdtr_resp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sym_hcb*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sym_hcb*,int,struct sym_ccb*) ; 
 int /*<<< orphan*/  wdtr_resp ; 

__attribute__((used)) static void FUNC8(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp)
{
	int req = 1;
	int result;

	/*
	 *  Request or answer ?
	 */
	if (FUNC0(np, HS_PRT) == HS_NEGOTIATE) {
		FUNC1(np, HS_PRT, HS_BUSY);
		if (cp->nego_status && cp->nego_status != NS_WIDE)
			goto reject_it;
		req = 0;
	}

	/*
	 *  Check and apply new values.
	 */
	result = FUNC7(np, req, cp);
	if (result)	/* Not acceptable, reject it */
		goto reject_it;
	if (req) {	/* Was a request, send response. */
		cp->nego_status = NS_WIDE;
		FUNC2(np, FUNC4(np, wdtr_resp));
	} else {		/* Was a response. */
		/*
		 * Negotiate for SYNC immediately after WIDE response.
		 * This allows to negotiate for both WIDE and SYNC on 
		 * a single SCSI command (Suggested by Justin Gibbs).
		 */
		if (tp->tgoal.offset) {
			FUNC5(np->msgout, tp->tgoal.period,
					tp->tgoal.offset);

			if (DEBUG_FLAGS & DEBUG_NEGO) {
				FUNC6(np, cp->target,
				                   "sync msgout", np->msgout);
			}

			cp->nego_status = NS_SYNC;
			FUNC1(np, HS_PRT, HS_NEGOTIATE);
			FUNC2(np, FUNC4(np, sdtr_resp));
			return;
		} else
			FUNC2(np, FUNC3(np, clrack));
	}

	return;

reject_it:
	FUNC2(np, FUNC4(np, msg_bad));
}