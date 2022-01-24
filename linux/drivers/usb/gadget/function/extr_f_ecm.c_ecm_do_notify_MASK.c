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
struct usb_request {int length; struct usb_cdc_notification* buf; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct usb_cdc_notification {int bmRequestType; void* wIndex; void* wLength; void* wValue; int /*<<< orphan*/  bNotificationType; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_ecm {int notify_state; int ctrl_id; struct usb_request* notify_req; int /*<<< orphan*/  notify; int /*<<< orphan*/  is_open; TYPE_3__ port; } ;
typedef  struct usb_cdc_notification __le32 ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,...) ; 
#define  ECM_NOTIFY_CONNECT 130 
#define  ECM_NOTIFY_NONE 129 
#define  ECM_NOTIFY_SPEED 128 
 int ECM_STATUS_BYTECOUNT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_CDC_NOTIFY_NETWORK_CONNECTION ; 
 int /*<<< orphan*/  USB_CDC_NOTIFY_SPEED_CHANGE ; 
 void* FUNC1 (int) ; 
 struct usb_cdc_notification FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct f_ecm *ecm)
{
	struct usb_request		*req = ecm->notify_req;
	struct usb_cdc_notification	*event;
	struct usb_composite_dev	*cdev = ecm->port.func.config->cdev;
	__le32				*data;
	int				status;

	/* notification already in flight? */
	if (!req)
		return;

	event = req->buf;
	switch (ecm->notify_state) {
	case ECM_NOTIFY_NONE:
		return;

	case ECM_NOTIFY_CONNECT:
		event->bNotificationType = USB_CDC_NOTIFY_NETWORK_CONNECTION;
		if (ecm->is_open)
			event->wValue = FUNC1(1);
		else
			event->wValue = FUNC1(0);
		event->wLength = 0;
		req->length = sizeof *event;

		FUNC0(cdev, "notify connect %s\n",
				ecm->is_open ? "true" : "false");
		ecm->notify_state = ECM_NOTIFY_SPEED;
		break;

	case ECM_NOTIFY_SPEED:
		event->bNotificationType = USB_CDC_NOTIFY_SPEED_CHANGE;
		event->wValue = FUNC1(0);
		event->wLength = FUNC1(8);
		req->length = ECM_STATUS_BYTECOUNT;

		/* SPEED_CHANGE data is up/down speeds in bits/sec */
		data = req->buf + sizeof *event;
		data[0] = FUNC2(FUNC3(cdev->gadget));
		data[1] = data[0];

		FUNC0(cdev, "notify speed %d\n", FUNC3(cdev->gadget));
		ecm->notify_state = ECM_NOTIFY_NONE;
		break;
	}
	event->bmRequestType = 0xA1;
	event->wIndex = FUNC1(ecm->ctrl_id);

	ecm->notify_req = NULL;
	status = FUNC4(ecm->notify, req, GFP_ATOMIC);
	if (status < 0) {
		ecm->notify_req = req;
		FUNC0(cdev, "notify --> %d\n", status);
	}
}