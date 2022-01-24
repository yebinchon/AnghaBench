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
struct wusbhc {int dummy; } ;
struct whc_qset {int remove; int reset; } ;
struct whc {int /*<<< orphan*/  lock; int /*<<< orphan*/  periodic_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  async_work; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; struct whc_qset* hcpriv; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC5 (struct usb_hcd*) ; 
 struct whc* FUNC6 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC7(struct usb_hcd *usb_hcd,
			       struct usb_host_endpoint *ep)
{
	struct wusbhc *wusbhc = FUNC5(usb_hcd);
	struct whc *whc = FUNC6(wusbhc);
	struct whc_qset *qset;
	unsigned long flags;

	FUNC1(&whc->lock, flags);

	qset = ep->hcpriv;
	if (qset) {
		qset->remove = 1;
		qset->reset = 1;

		if (FUNC3(&ep->desc)
		    || FUNC4(&ep->desc))
			FUNC0(whc->workqueue, &whc->async_work);
		else
			FUNC0(whc->workqueue, &whc->periodic_work);
	}

	FUNC2(&whc->lock, flags);
}