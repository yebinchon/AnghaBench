#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wahc {int /*<<< orphan*/  rpipe_mutex; TYPE_1__* usb_iface; } ;
struct TYPE_6__ {int /*<<< orphan*/  wRPipeIndex; } ;
struct wa_rpipe {TYPE_3__ descr; struct usb_host_endpoint* ep; } ;
struct TYPE_5__ {int bmAttributes; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; struct wa_rpipe* hcpriv; } ;
struct urb {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int CONFIG_BUG ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wa_rpipe*,struct wahc*,struct usb_host_endpoint*,struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wa_rpipe*,struct wahc*,struct usb_host_endpoint*,struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wa_rpipe**,struct wahc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wa_rpipe*) ; 

int FUNC9(struct wahc *wa, struct usb_host_endpoint *ep,
		    struct urb *urb, gfp_t gfp)
{
	int result = 0;
	struct device *dev = &wa->usb_iface->dev;
	struct wa_rpipe *rpipe;
	u8 eptype;

	FUNC3(&wa->rpipe_mutex);
	rpipe = ep->hcpriv;
	if (rpipe != NULL) {
		if (CONFIG_BUG == 1) {
			result = FUNC6(rpipe, wa, ep, urb, gfp);
			if (result < 0)
				goto error;
		}
		FUNC0(rpipe);
		FUNC1(dev, "ep 0x%02x: reusing rpipe %u\n",
			ep->desc.bEndpointAddress,
			FUNC2(rpipe->descr.wRPipeIndex));
	} else {
		/* hmm, assign idle rpipe, aim it */
		result = -ENOBUFS;
		eptype = ep->desc.bmAttributes & 0x03;
		result = FUNC7(&rpipe, wa, 1 << eptype, gfp);
		if (result < 0)
			goto error;
		result = FUNC5(rpipe, wa, ep, urb, gfp);
		if (result < 0) {
			FUNC8(rpipe);
			goto error;
		}
		ep->hcpriv = rpipe;
		rpipe->ep = ep;
		FUNC0(rpipe);	/* for caching into ep->hcpriv */
		FUNC1(dev, "ep 0x%02x: using rpipe %u\n",
			ep->desc.bEndpointAddress,
			FUNC2(rpipe->descr.wRPipeIndex));
	}
error:
	FUNC4(&wa->rpipe_mutex);
	return result;
}