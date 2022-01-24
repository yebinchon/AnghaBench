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
typedef  int u8 ;
struct wusbhc {int dummy; } ;
struct wusb_dev {int addr; struct usb_device* usb_dev; } ;
struct device {int dummy; } ;
struct usb_device {int authenticated; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int /*<<< orphan*/  USB_REQ_SET_ADDRESS ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wusbhc*,struct wusb_dev*,int) ; 

int FUNC6(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
	int result = -ENOMEM;
	struct usb_device *usb_dev = wusb_dev->usb_dev;
	struct device *dev = &usb_dev->dev;
	u8 new_address = wusb_dev->addr & 0x7F;

	/* Set address 0 */
	result = FUNC1(usb_dev, FUNC4(usb_dev, 0),
			USB_REQ_SET_ADDRESS,
			USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
			 0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
	if (result < 0) {
		FUNC0(dev, "auth failed: can't set address 0: %d\n",
			result);
		goto error_addr0;
	}
	result = FUNC5(wusbhc, wusb_dev, 0);
	if (result < 0)
		goto error_addr0;
	FUNC3(usb_dev, USB_STATE_DEFAULT);
	FUNC2(usb_dev);

	/* Set new (authenticated) address. */
	result = FUNC1(usb_dev, FUNC4(usb_dev, 0),
			USB_REQ_SET_ADDRESS,
			USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
			new_address, 0, NULL, 0,
			USB_CTRL_SET_TIMEOUT);
	if (result < 0) {
		FUNC0(dev, "auth failed: can't set address %u: %d\n",
			new_address, result);
		goto error_addr;
	}
	result = FUNC5(wusbhc, wusb_dev, new_address);
	if (result < 0)
		goto error_addr;
	FUNC3(usb_dev, USB_STATE_ADDRESS);
	FUNC2(usb_dev);
	usb_dev->authenticated = 1;
error_addr:
error_addr0:
	return result;
}