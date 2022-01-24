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
struct ctlr_info {int scan_waiting; int drv_req_rescan; int /*<<< orphan*/  reset_lock; scalar_t__ reset_in_progress; int /*<<< orphan*/  scan_lock; scalar_t__ scan_finished; int /*<<< orphan*/  scan_wait_queue; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 void FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctlr_info*) ; 
 struct ctlr_info* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct Scsi_Host *sh)
{
	struct ctlr_info *h = FUNC3(sh);
	unsigned long flags;

	/*
	 * Don't let rescans be initiated on a controller known to be locked
	 * up.  If the controller locks up *during* a rescan, that thread is
	 * probably hosed, but at least we can prevent new rescan threads from
	 * piling up on a locked up controller.
	 */
	if (FUNC6(FUNC2(h)))
		return FUNC0(h);

	/*
	 * If a scan is already waiting to run, no need to add another
	 */
	FUNC4(&h->scan_lock, flags);
	if (h->scan_waiting) {
		FUNC5(&h->scan_lock, flags);
		return;
	}

	FUNC5(&h->scan_lock, flags);

	/* wait until any scan already in progress is finished. */
	while (1) {
		FUNC4(&h->scan_lock, flags);
		if (h->scan_finished)
			break;
		h->scan_waiting = 1;
		FUNC5(&h->scan_lock, flags);
		FUNC7(h->scan_wait_queue, h->scan_finished);
		/* Note: We don't need to worry about a race between this
		 * thread and driver unload because the midlayer will
		 * have incremented the reference count, so unload won't
		 * happen if we're in here.
		 */
	}
	h->scan_finished = 0; /* mark scan as in progress */
	h->scan_waiting = 0;
	FUNC5(&h->scan_lock, flags);

	if (FUNC6(FUNC2(h)))
		return FUNC0(h);

	/*
	 * Do the scan after a reset completion
	 */
	FUNC4(&h->reset_lock, flags);
	if (h->reset_in_progress) {
		h->drv_req_rescan = 1;
		FUNC5(&h->reset_lock, flags);
		FUNC0(h);
		return;
	}
	FUNC5(&h->reset_lock, flags);

	FUNC1(h);

	FUNC0(h);
}