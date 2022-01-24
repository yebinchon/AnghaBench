#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_hcd {int dummy; } ;
struct gb_usb_hub_control_response {int /*<<< orphan*/  buf; } ;
struct gb_usb_hub_control_request {void* wLength; void* wIndex; void* wValue; void* typeReq; } ;
struct gb_usb_device {int /*<<< orphan*/  connection; } ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; } ;
struct TYPE_4__ {struct gb_usb_hub_control_response* payload; } ;
struct TYPE_3__ {struct gb_usb_hub_control_request* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_USB_TYPE_HUB_CONTROL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 struct gb_operation* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 
 int FUNC3 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct gb_usb_device* FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd, u16 typeReq, u16 wValue, u16 wIndex,
		       char *buf, u16 wLength)
{
	struct gb_usb_device *dev = FUNC5(hcd);
	struct gb_operation *operation;
	struct gb_usb_hub_control_request *request;
	struct gb_usb_hub_control_response *response;
	size_t response_size;
	int ret;

	/* FIXME: handle unspecified lengths */
	response_size = sizeof(*response) + wLength;

	operation = FUNC1(dev->connection,
					GB_USB_TYPE_HUB_CONTROL,
					sizeof(*request),
					response_size,
					GFP_KERNEL);
	if (!operation)
		return -ENOMEM;

	request = operation->request->payload;
	request->typeReq = FUNC0(typeReq);
	request->wValue = FUNC0(wValue);
	request->wIndex = FUNC0(wIndex);
	request->wLength = FUNC0(wLength);

	ret = FUNC3(operation);
	if (ret)
		goto out;

	if (wLength) {
		/* Greybus core has verified response size */
		response = operation->response->payload;
		FUNC4(buf, response->buf, wLength);
	}
out:
	FUNC2(operation);

	return ret;
}