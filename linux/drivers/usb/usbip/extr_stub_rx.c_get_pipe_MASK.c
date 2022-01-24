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
struct TYPE_5__ {scalar_t__ number_of_packets; } ;
struct TYPE_6__ {TYPE_2__ cmd_submit; } ;
struct TYPE_4__ {int ep; int direction; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_host_endpoint {struct usb_endpoint_descriptor desc; } ;
struct usb_device {int /*<<< orphan*/  dev; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct stub_device {struct usb_device* udev; } ;

/* Variables and functions */
 int USBIP_DIR_IN ; 
 int USBIP_DIR_OUT ; 
 scalar_t__ USBIP_MAX_ISO_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC3 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 int FUNC5 (struct usb_device*,int) ; 
 int FUNC6 (struct usb_device*,int) ; 
 int FUNC7 (struct usb_device*,int) ; 
 int FUNC8 (struct usb_device*,int) ; 
 int FUNC9 (struct usb_device*,int) ; 
 int FUNC10 (struct usb_device*,int) ; 
 int FUNC11 (struct usb_device*,int) ; 
 int FUNC12 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC13(struct stub_device *sdev, struct usbip_header *pdu)
{
	struct usb_device *udev = sdev->udev;
	struct usb_host_endpoint *ep;
	struct usb_endpoint_descriptor *epd = NULL;
	int epnum = pdu->base.ep;
	int dir = pdu->base.direction;

	if (epnum < 0 || epnum > 15)
		goto err_ret;

	if (dir == USBIP_DIR_IN)
		ep = udev->ep_in[epnum & 0x7f];
	else
		ep = udev->ep_out[epnum & 0x7f];
	if (!ep)
		goto err_ret;

	epd = &ep->desc;

	if (FUNC2(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC10(udev, epnum);
		else
			return FUNC6(udev, epnum);
	}

	if (FUNC1(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC9(udev, epnum);
		else
			return FUNC5(udev, epnum);
	}

	if (FUNC3(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC11(udev, epnum);
		else
			return FUNC7(udev, epnum);
	}

	if (FUNC4(epd)) {
		/* validate number of packets */
		if (pdu->u.cmd_submit.number_of_packets < 0 ||
		    pdu->u.cmd_submit.number_of_packets >
		    USBIP_MAX_ISO_PACKETS) {
			FUNC0(&sdev->udev->dev,
				"CMD_SUBMIT: isoc invalid num packets %d\n",
				pdu->u.cmd_submit.number_of_packets);
			return -1;
		}
		if (dir == USBIP_DIR_OUT)
			return FUNC12(udev, epnum);
		else
			return FUNC8(udev, epnum);
	}

err_ret:
	/* NOT REACHED */
	FUNC0(&sdev->udev->dev, "CMD_SUBMIT: invalid epnum %d\n", epnum);
	return -1;
}