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
struct dwc2_qh {scalar_t__ dw_align_buf; scalar_t__ desc_list; int /*<<< orphan*/  dwc_tt; int /*<<< orphan*/  wait_timer; int /*<<< orphan*/  unreserve_timer; } ;
struct dwc2_hsotg {scalar_t__ unaligned_cache; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	/* Make sure any unreserve work is finished. */
	if (FUNC0(&qh->unreserve_timer)) {
		unsigned long flags;

		FUNC7(&hsotg->lock, flags);
		FUNC1(hsotg, qh);
		FUNC8(&hsotg->lock, flags);
	}

	/*
	 * We don't have the lock so we can safely wait until the wait timer
	 * finishes.  Of course, at this point in time we'd better have set
	 * wait_timer_active to false so if this timer was still pending it
	 * won't do anything anyway, but we want it to finish before we free
	 * memory.
	 */
	FUNC4(&qh->wait_timer);

	FUNC3(hsotg, qh->dwc_tt);

	if (qh->desc_list)
		FUNC2(hsotg, qh);
	else if (hsotg->unaligned_cache && qh->dw_align_buf)
		FUNC6(hsotg->unaligned_cache, qh->dw_align_buf);

	FUNC5(qh);
}