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
struct usbhsg_uep {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;

/* Variables and functions */
#define  USB_DEVICE_TEST_MODE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ; 

__attribute__((used)) static int FUNC4(struct usbhs_priv *priv,
						 struct usbhsg_uep *uep,
						 struct usb_ctrlrequest *ctrl)
{
	switch (FUNC0(ctrl->wValue)) {
	case USB_DEVICE_TEST_MODE:
		FUNC3(priv, uep, ctrl);
		FUNC1(100);
		FUNC2(priv, FUNC0(ctrl->wIndex) >> 8);
		break;
	default:
		FUNC3(priv, uep, ctrl);
		break;
	}

	return 0;
}