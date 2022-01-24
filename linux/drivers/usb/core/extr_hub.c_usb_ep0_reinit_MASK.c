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
struct usb_device {int /*<<< orphan*/  ep0; } ;

/* Variables and functions */
 scalar_t__ USB_DIR_IN ; 
 scalar_t__ USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct usb_device *udev)
{
	FUNC0(udev, 0 + USB_DIR_IN, true);
	FUNC0(udev, 0 + USB_DIR_OUT, true);
	FUNC1(udev, &udev->ep0, true);
}