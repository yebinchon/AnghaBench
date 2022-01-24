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
struct usb_request {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; } ;
struct cdns3_endpoint {int dir; int /*<<< orphan*/  pending_req_list; } ;
struct cdns3_device {int ep0_data_dir; scalar_t__ ep0_stage; struct cdns3_endpoint** eps; struct usb_ctrlrequest* setup_buf; } ;

/* Variables and functions */
 scalar_t__ CDNS3_DATA_STAGE ; 
 scalar_t__ CDNS3_STATUS_STAGE ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int USB_DIR_IN ; 
 int USB_GADGET_DELAYED_STATUS ; 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*,int,int) ; 
 int FUNC1 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC2 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_endpoint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ctrlrequest*) ; 

__attribute__((used)) static void FUNC9(struct cdns3_device *priv_dev)
{
	struct usb_ctrlrequest *ctrl = priv_dev->setup_buf;
	struct cdns3_endpoint *priv_ep = priv_dev->eps[0];
	int result;

	priv_dev->ep0_data_dir = ctrl->bRequestType & USB_DIR_IN;

	FUNC8(ctrl);

	if (!FUNC6(&priv_ep->pending_req_list)) {
		struct usb_request *request;

		request = FUNC4(&priv_ep->pending_req_list);
		priv_ep->dir = priv_dev->ep0_data_dir;
		FUNC3(priv_ep, FUNC7(request),
				      -ECONNRESET);
	}

	if (FUNC5(ctrl->wLength))
		priv_dev->ep0_stage = CDNS3_DATA_STAGE;
	else
		priv_dev->ep0_stage = CDNS3_STATUS_STAGE;

	if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
		result = FUNC2(priv_dev, ctrl);
	else
		result = FUNC1(priv_dev, ctrl);

	if (result == USB_GADGET_DELAYED_STATUS)
		return;

	if (result < 0)
		FUNC0(priv_dev, 1, 1);
	else if (priv_dev->ep0_stage == CDNS3_STATUS_STAGE)
		FUNC0(priv_dev, 0, 1);
}