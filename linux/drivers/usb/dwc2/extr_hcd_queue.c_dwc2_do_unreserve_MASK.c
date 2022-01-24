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
struct dwc2_qh {int unreserve_pending; scalar_t__ host_us; int /*<<< orphan*/  qh_list_entry; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {int /*<<< orphan*/  periodic_channels; TYPE_1__ params; int /*<<< orphan*/  periodic_usecs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	FUNC1(&hsotg->lock);

	FUNC0(!qh->unreserve_pending);

	/* No more unreserve pending--we're doing it */
	qh->unreserve_pending = false;

	if (FUNC0(!FUNC4(&qh->qh_list_entry)))
		FUNC3(&qh->qh_list_entry);

	/* Update claimed usecs per (micro)frame */
	hsotg->periodic_usecs -= qh->host_us;

	if (hsotg->params.uframe_sched) {
		FUNC2(hsotg, qh);
	} else {
		/* Release periodic channel reservation */
		hsotg->periodic_channels--;
	}
}