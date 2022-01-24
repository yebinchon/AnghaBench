#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ctl_src_addr; } ;
struct fnic {scalar_t__ state; int /*<<< orphan*/  fnic_lock; TYPE_2__* lport; int /*<<< orphan*/ * remove_wait; TYPE_1__ ctlr; } ;
struct fc_lport {int dummy; } ;
typedef  enum fnic_state { ____Placeholder_fnic_state } fnic_state ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FNIC_IN_ETH_MODE ; 
 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ; 
 int FNIC_RMDEVICE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int FUNC2 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*,int /*<<< orphan*/ ) ; 
 struct fnic* FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  remove_wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(struct fc_lport *lp)
{
	int err = 0;
	unsigned long flags;
	enum fnic_state old_state;
	struct fnic *fnic = FUNC4(lp);
	FUNC0(remove_wait);

	/* Issue firmware reset for fnic, wait for reset to complete */
retry_fw_reset:
	FUNC7(&fnic->fnic_lock, flags);
	if (FUNC9(fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)) {
		/* fw reset is in progress, poll for its completion */
		FUNC8(&fnic->fnic_lock, flags);
		FUNC6(FUNC5(100));
		goto retry_fw_reset;
	}

	fnic->remove_wait = &remove_wait;
	old_state = fnic->state;
	fnic->state = FNIC_IN_FC_TRANS_ETH_MODE;
	FUNC3(fnic, fnic->ctlr.ctl_src_addr);
	FUNC8(&fnic->fnic_lock, flags);

	err = FUNC2(fnic);
	if (err) {
		FUNC7(&fnic->fnic_lock, flags);
		if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)
			fnic->state = old_state;
		fnic->remove_wait = NULL;
		FUNC8(&fnic->fnic_lock, flags);
		return;
	}

	/* Wait for firmware reset to complete */
	FUNC10(&remove_wait,
				    FUNC5(FNIC_RMDEVICE_TIMEOUT));

	FUNC7(&fnic->fnic_lock, flags);
	fnic->remove_wait = NULL;
	FUNC1(KERN_DEBUG, fnic->lport->host,
		      "fnic_scsi_abort_io %s\n",
		      (fnic->state == FNIC_IN_ETH_MODE) ?
		      "SUCCESS" : "FAILED");
	FUNC8(&fnic->fnic_lock, flags);

}