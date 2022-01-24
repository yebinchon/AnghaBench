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
struct usb_request {scalar_t__ length; scalar_t__ actual; int /*<<< orphan*/  list; int /*<<< orphan*/  status; } ;
struct cdns3_request {int flags; struct usb_request request; } ;
struct cdns3_endpoint {int flags; int /*<<< orphan*/ * descmis_req; int /*<<< orphan*/  deferred_req_list; } ;
struct cdns3_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int EP_QUIRK_END_TRANSFER ; 
 int EP_QUIRK_EXTRA_BUF_EN ; 
 int REQUEST_INTERNAL ; 
 struct usb_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_endpoint*,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct usb_request *FUNC4(struct cdns3_device *priv_dev,
					      struct cdns3_endpoint *priv_ep,
					      struct cdns3_request *priv_req)
{
	if (priv_ep->flags & EP_QUIRK_EXTRA_BUF_EN &&
	    priv_req->flags & REQUEST_INTERNAL) {
		struct usb_request *req;

		req = FUNC0(&priv_ep->deferred_req_list);

		priv_ep->descmis_req = NULL;

		if (!req)
			return NULL;

		FUNC2(priv_ep, req);
		if (!(priv_ep->flags & EP_QUIRK_END_TRANSFER) &&
		    req->length != req->actual) {
			/* wait for next part of transfer */
			return NULL;
		}

		if (req->status == -EINPROGRESS)
			req->status = 0;

		FUNC3(&req->list);
		FUNC1(priv_dev, priv_ep);
		return req;
	}

	return &priv_req->request;
}