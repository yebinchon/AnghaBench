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
struct usb_request {int status; scalar_t__ buf; scalar_t__ complete; int /*<<< orphan*/  length; int /*<<< orphan*/  list; } ;
struct cdns3_request {int flags; TYPE_1__* aligned_buf; struct usb_request request; } ;
struct cdns3_endpoint {int /*<<< orphan*/  endpoint; int /*<<< orphan*/  dir; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; scalar_t__ zlp_buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  sysdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ DEV_VER_V2 ; 
 int EINPROGRESS ; 
 int REQUEST_PENDING ; 
 int REQUEST_UNALIGNED ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_request*) ; 
 struct usb_request* FUNC1 (struct cdns3_device*,struct cdns3_endpoint*,struct cdns3_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns3_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct usb_request*,int /*<<< orphan*/ ) ; 

void FUNC9(struct cdns3_endpoint *priv_ep,
			   struct cdns3_request *priv_req,
			   int status)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	struct usb_request *request = &priv_req->request;

	FUNC2(&request->list);

	if (request->status == -EINPROGRESS)
		request->status = status;

	FUNC8(priv_dev->sysdev, request,
					priv_ep->dir);

	if ((priv_req->flags & REQUEST_UNALIGNED) &&
	    priv_ep->dir == USB_DIR_OUT && !request->status)
		FUNC3(request->buf, priv_req->aligned_buf->buf,
		       request->length);

	priv_req->flags &= ~(REQUEST_PENDING | REQUEST_UNALIGNED);
	FUNC6(priv_req);

	if (priv_dev->dev_ver < DEV_VER_V2) {
		request = FUNC1(priv_dev, priv_ep,
						    priv_req);
		if (!request)
			return;
	}

	if (request->complete) {
		FUNC5(&priv_dev->lock);
		FUNC7(&priv_ep->endpoint,
					    request);
		FUNC4(&priv_dev->lock);
	}

	if (request->buf == priv_dev->zlp_buf)
		FUNC0(&priv_ep->endpoint, request);
}