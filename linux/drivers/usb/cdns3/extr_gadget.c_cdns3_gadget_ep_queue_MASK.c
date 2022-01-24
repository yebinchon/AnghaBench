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
struct usb_request {int length; int /*<<< orphan*/  buf; scalar_t__ zero; } ;
struct usb_ep {int maxpacket; } ;
struct cdns3_request {int /*<<< orphan*/  flags; } ;
struct cdns3_endpoint {int /*<<< orphan*/  name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  zlp_buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  REQUEST_ZLP ; 
 int FUNC0 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC1 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cdns3_endpoint* FUNC3 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cdns3_request* FUNC6 (struct usb_request*) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *ep, struct usb_request *request,
				 gfp_t gfp_flags)
{
	struct usb_request *zlp_request;
	struct cdns3_endpoint *priv_ep;
	struct cdns3_device *priv_dev;
	unsigned long flags;
	int ret;

	if (!request || !ep)
		return -EINVAL;

	priv_ep = FUNC3(ep);
	priv_dev = priv_ep->cdns3_dev;

	FUNC4(&priv_dev->lock, flags);

	ret = FUNC0(ep, request, gfp_flags);

	if (ret == 0 && request->zero && request->length &&
	    (request->length % ep->maxpacket == 0)) {
		struct cdns3_request *priv_req;

		zlp_request = FUNC1(ep, GFP_ATOMIC);
		zlp_request->buf = priv_dev->zlp_buf;
		zlp_request->length = 0;

		priv_req = FUNC6(zlp_request);
		priv_req->flags |= REQUEST_ZLP;

		FUNC2(priv_dev->dev, "Queuing ZLP for endpoint: %s\n",
			priv_ep->name);
		ret = FUNC0(ep, zlp_request, gfp_flags);
	}

	FUNC5(&priv_dev->lock, flags);
	return ret;
}