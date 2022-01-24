#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_request {scalar_t__ length; scalar_t__ buf; int /*<<< orphan*/ * context; } ;
struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; } ;
struct fsg_dev {int interface_number; TYPE_1__* common; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep0_req_tag; struct usb_request* ep0req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int EDOM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FSG_STATE_PROTOCOL_RESET ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_GADGET_DELAYED_STATUS ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
#define  US_BULK_GET_MAX_LUN 129 
#define  US_BULK_RESET_REQUEST 128 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsg_dev*,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 struct fsg_dev* FUNC5 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_function *f,
		     const struct usb_ctrlrequest *ctrl)
{
	struct fsg_dev		*fsg = FUNC5(f);
	struct usb_request	*req = fsg->common->ep0req;
	u16			w_index = FUNC7(ctrl->wIndex);
	u16			w_value = FUNC7(ctrl->wValue);
	u16			w_length = FUNC7(ctrl->wLength);

	if (!FUNC6(fsg->common))
		return -EOPNOTSUPP;

	++fsg->common->ep0_req_tag;	/* Record arrival of a new request */
	req->context = NULL;
	req->length = 0;
	FUNC3(fsg, "ep0-setup", (u8 *) ctrl, sizeof(*ctrl));

	switch (ctrl->bRequest) {

	case US_BULK_RESET_REQUEST:
		if (ctrl->bRequestType !=
		    (USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE))
			break;
		if (w_index != fsg->interface_number || w_value != 0 ||
				w_length != 0)
			return -EDOM;

		/*
		 * Raise an exception to stop the current operation
		 * and reinitialize our state.
		 */
		FUNC0(fsg, "bulk reset request\n");
		FUNC9(fsg->common, FSG_STATE_PROTOCOL_RESET);
		return USB_GADGET_DELAYED_STATUS;

	case US_BULK_GET_MAX_LUN:
		if (ctrl->bRequestType !=
		    (USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE))
			break;
		if (w_index != fsg->interface_number || w_value != 0 ||
				w_length != 1)
			return -EDOM;
		FUNC1(fsg, "get max LUN\n");
		*(u8 *)req->buf = FUNC2(fsg->common);

		/* Respond with data/status */
		req->length = FUNC8((u16)1, w_length);
		return FUNC4(fsg->common);
	}

	FUNC1(fsg,
	     "unknown class-specific control req %02x.%02x v%04x i%04x l%u\n",
	     ctrl->bRequestType, ctrl->bRequest,
	     FUNC7(ctrl->wValue), w_index, w_length);
	return -EOPNOTSUPP;
}