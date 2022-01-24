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
struct dwc3_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
struct dwc3_ep {int /*<<< orphan*/  pending_list; int /*<<< orphan*/  name; TYPE_1__ endpoint; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EBUSY ; 
 int ESHUTDOWN ; 
 int FUNC0 (struct dwc3_ep*,struct dwc3_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc3_ep* FUNC5 (struct usb_ep*) ; 
 struct dwc3_request* FUNC6 (struct usb_request*) ; 

int FUNC7(struct usb_ep *ep, struct usb_request *request,
		gfp_t gfp_flags)
{
	struct dwc3_request		*req = FUNC6(request);
	struct dwc3_ep			*dep = FUNC5(ep);
	struct dwc3			*dwc = dep->dwc;

	unsigned long			flags;

	int				ret;

	FUNC3(&dwc->lock, flags);
	if (!dep->endpoint.desc) {
		FUNC1(dwc->dev, "%s: can't queue to disabled endpoint\n",
				dep->name);
		ret = -ESHUTDOWN;
		goto out;
	}

	/* we share one TRB for ep0/1 */
	if (!FUNC2(&dep->pending_list)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC0(dep, req);

out:
	FUNC4(&dwc->lock, flags);

	return ret;
}