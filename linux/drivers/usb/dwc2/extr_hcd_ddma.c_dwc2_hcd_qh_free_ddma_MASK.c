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
struct dwc2_qh {scalar_t__ ep_type; scalar_t__ channel; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {scalar_t__ frame_list; int /*<<< orphan*/  periodic_channels; TYPE_1__ params; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ USB_ENDPOINT_XFER_INT ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	unsigned long flags;

	FUNC0(hsotg, qh);

	/*
	 * Channel still assigned due to some reasons.
	 * Seen on Isoc URB dequeue. Channel halted but no subsequent
	 * ChHalted interrupt to release the channel. Afterwards
	 * when it comes here from endpoint disable routine
	 * channel remains assigned.
	 */
	FUNC4(&hsotg->lock, flags);
	if (qh->channel)
		FUNC3(hsotg, qh);
	FUNC5(&hsotg->lock, flags);

	if ((qh->ep_type == USB_ENDPOINT_XFER_ISOC ||
	     qh->ep_type == USB_ENDPOINT_XFER_INT) &&
	    (hsotg->params.uframe_sched ||
	     !hsotg->periodic_channels) && hsotg->frame_list) {
		FUNC2(hsotg);
		FUNC1(hsotg);
	}
}