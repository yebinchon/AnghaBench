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
struct usb_request {scalar_t__ length; int status; int /*<<< orphan*/  buf; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct fsg_dev {struct usb_ep* bulk_in; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fsg_dev *fsg, struct usb_ep *ep,
			   struct usb_request *req)
{
	int	rc;

	if (ep == fsg->bulk_in)
		FUNC1(fsg, "bulk-in", req->buf, req->length);

	rc = FUNC2(ep, req, GFP_KERNEL);
	if (rc) {

		/* We can't do much more than wait for a reset */
		req->status = rc;

		/*
		 * Note: currently the net2280 driver fails zero-length
		 * submissions if DMA is enabled.
		 */
		if (rc != -ESHUTDOWN &&
				!(rc == -EOPNOTSUPP && req->length == 0))
			FUNC0(fsg, "error in submission: %s --> %d\n",
					ep->name, rc);
	}
	return rc;
}