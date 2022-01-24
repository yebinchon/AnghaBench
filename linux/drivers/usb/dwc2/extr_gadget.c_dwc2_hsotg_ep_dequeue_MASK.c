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
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc2_hsotg_req {int dummy; } ;
struct dwc2_hsotg_ep {TYPE_1__* req; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct usb_request req; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*) ; 
 struct dwc2_hsotg_ep* FUNC4 (struct usb_ep*) ; 
 struct dwc2_hsotg_req* FUNC5 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct usb_ep *ep, struct usb_request *req)
{
	struct dwc2_hsotg_req *hs_req = FUNC5(req);
	struct dwc2_hsotg_ep *hs_ep = FUNC4(ep);
	struct dwc2_hsotg *hs = hs_ep->parent;
	unsigned long flags;

	FUNC0(hs->dev, "ep_dequeue(%p,%p)\n", ep, req);

	FUNC6(&hs->lock, flags);

	if (!FUNC3(hs_ep, hs_req)) {
		FUNC7(&hs->lock, flags);
		return -EINVAL;
	}

	/* Dequeue already started request */
	if (req == &hs_ep->req->req)
		FUNC2(hs, hs_ep);

	FUNC1(hs, hs_ep, hs_req, -ECONNRESET);
	FUNC7(&hs->lock, flags);

	return 0;
}