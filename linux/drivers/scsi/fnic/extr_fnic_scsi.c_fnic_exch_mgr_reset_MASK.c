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
typedef  scalar_t__ u32 ;
struct fnic {int /*<<< orphan*/  in_remove; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fnic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 struct fnic* FUNC4 (struct fc_lport*) ; 

void FUNC5(struct fc_lport *lp, u32 sid, u32 did)
{
	struct fnic *fnic = FUNC4(lp);

	/* Non-zero sid, nothing to do */
	if (sid)
		goto call_fc_exch_mgr_reset;

	if (did) {
		FUNC1(fnic, did);
		goto call_fc_exch_mgr_reset;
	}

	/*
	 * sid = 0, did = 0
	 * link down or device being removed
	 */
	if (!fnic->in_remove)
		FUNC3(lp);
	else
		FUNC2(lp);

	/* call libFC exch mgr reset to reset its exchanges */
call_fc_exch_mgr_reset:
	FUNC0(lp, sid, did);

}