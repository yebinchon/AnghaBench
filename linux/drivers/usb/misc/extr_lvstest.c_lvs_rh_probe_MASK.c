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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ bDeviceProtocol; } ;
struct usb_device {int /*<<< orphan*/  dev; scalar_t__ parent; TYPE_1__ descriptor; } ;
struct lvs_rh {int /*<<< orphan*/  urb; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  rh_work; int /*<<< orphan*/  descriptor; struct usb_interface* intf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DT_HUB_NONVAR_SIZE ; 
 int USB_DT_SS_HUB ; 
 int /*<<< orphan*/  USB_DT_SS_HUB_SIZE ; 
 scalar_t__ USB_HUB_PR_SS ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int USB_RT_HUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct lvs_rh* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  lvs_rh_irq ; 
 int /*<<< orphan*/  lvs_rh_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct usb_device*,unsigned int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct lvs_rh*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_host_interface*,struct usb_endpoint_descriptor**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct lvs_rh*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *intf,
		const struct usb_device_id *id)
{
	struct usb_device *hdev;
	struct usb_host_interface *desc;
	struct usb_endpoint_descriptor *endpoint;
	struct lvs_rh *lvs;
	unsigned int pipe;
	int ret, maxp;

	hdev = FUNC3(intf);
	desc = intf->cur_altsetting;

	ret = FUNC7(desc, &endpoint);
	if (ret)
		return ret;

	/* valid only for SS root hub */
	if (hdev->descriptor.bDeviceProtocol != USB_HUB_PR_SS || hdev->parent) {
		FUNC1(&intf->dev, "Bind LVS driver with SS root Hub only\n");
		return -EINVAL;
	}

	lvs = FUNC2(&intf->dev, sizeof(*lvs), GFP_KERNEL);
	if (!lvs)
		return -ENOMEM;

	lvs->intf = intf;
	FUNC13(intf, lvs);

	/* how many number of ports this root hub has */
	ret = FUNC5(hdev, FUNC11(hdev, 0),
			USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB,
			USB_DT_SS_HUB << 8, 0, &lvs->descriptor,
			USB_DT_SS_HUB_SIZE, USB_CTRL_GET_TIMEOUT);
	if (ret < (USB_DT_HUB_NONVAR_SIZE + 2)) {
		FUNC1(&hdev->dev, "wrong root hub descriptor read %d\n", ret);
		return ret;
	}

	/* submit urb to poll interrupt endpoint */
	lvs->urb = FUNC4(0, GFP_KERNEL);
	if (!lvs->urb)
		return -ENOMEM;

	FUNC0(&lvs->rh_work, lvs_rh_work);

	pipe = FUNC12(hdev, endpoint->bEndpointAddress);
	maxp = FUNC9(hdev, pipe, FUNC10(pipe));
	FUNC6(lvs->urb, hdev, pipe, &lvs->buffer[0], maxp,
			lvs_rh_irq, lvs, endpoint->bInterval);

	ret = FUNC14(lvs->urb, GFP_KERNEL);
	if (ret < 0) {
		FUNC1(&intf->dev, "couldn't submit lvs urb %d\n", ret);
		goto free_urb;
	}

	return ret;

free_urb:
	FUNC8(lvs->urb);
	return ret;
}