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
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  tx_queue; scalar_t__ in_remove; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ FNIC_IN_ETH_MODE ; 
 scalar_t__ FNIC_IN_FC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fnic*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 struct fnic* FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct fc_lport *lp, struct fc_frame *fp)
{
	struct fnic *fnic = FUNC3(lp);
	unsigned long flags;

	if (fnic->in_remove) {
		FUNC0(FUNC2(fp));
		return -1;
	}

	/*
	 * Queue frame if in a transitional state.
	 * This occurs while registering the Port_ID / MAC address after FLOGI.
	 */
	FUNC5(&fnic->fnic_lock, flags);
	if (fnic->state != FNIC_IN_FC_MODE && fnic->state != FNIC_IN_ETH_MODE) {
		FUNC4(&fnic->tx_queue, FUNC2(fp));
		FUNC6(&fnic->fnic_lock, flags);
		return 0;
	}
	FUNC6(&fnic->fnic_lock, flags);

	return FUNC1(fnic, fp);
}