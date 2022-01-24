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
struct dwc2_qh {int unreserve_pending; int /*<<< orphan*/  qh_list_entry; int /*<<< orphan*/  unreserve_timer; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ DWC2_UNRESERVE_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg,
				     struct dwc2_qh *qh)
{
	bool did_modify;

	FUNC1(&hsotg->lock);

	/*
	 * Schedule the unreserve to happen in a little bit.  Cases here:
	 * - Unreserve worker might be sitting there waiting to grab the lock.
	 *   In this case it will notice it's been schedule again and will
	 *   quit.
	 * - Unreserve worker might not be scheduled.
	 *
	 * We should never already be scheduled since dwc2_schedule_periodic()
	 * should have canceled the scheduled unreserve timer (hence the
	 * warning on did_modify).
	 *
	 * We add + 1 to the timer to guarantee that at least 1 jiffy has
	 * passed (otherwise if the jiffy counter might tick right after we
	 * read it and we'll get no delay).
	 */
	did_modify = FUNC3(&qh->unreserve_timer,
			       jiffies + DWC2_UNRESERVE_DELAY + 1);
	FUNC0(did_modify);
	qh->unreserve_pending = 1;

	FUNC2(&qh->qh_list_entry);
}