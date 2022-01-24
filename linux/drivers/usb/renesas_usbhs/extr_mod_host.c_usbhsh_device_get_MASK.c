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
struct usbhsh_hpriv {int dummy; } ;
struct usbhsh_device {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct usbhsh_device* FUNC1 (struct usbhsh_hpriv*) ; 
 struct usb_device* FUNC2 (struct urb*) ; 
 struct usbhsh_device* FUNC3 (struct usb_device*) ; 

__attribute__((used)) static struct usbhsh_device *FUNC4(struct usbhsh_hpriv *hpriv,
					       struct urb *urb)
{
	struct usb_device *usbv = FUNC2(urb);
	struct usbhsh_device *udev = FUNC3(usbv);

	/* usbhsh_device_attach() is still not called */
	if (!udev)
		return NULL;

	/* if it is device0, return it */
	if (0 == FUNC0(urb->pipe))
		return FUNC1(hpriv);

	/* return attached device */
	return udev;
}