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
struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int quirks; int persist_enabled; TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_CLASS_HUB ; 
 int USB_QUIRK_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  usb_amd_resume_quirk_list ; 
 int FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_quirk_list ; 

void FUNC4(struct usb_device *udev)
{
	udev->quirks = FUNC3(udev, usb_quirk_list);

	/*
	 * Pixart-based mice would trigger remote wakeup issue on AMD
	 * Yangtze chipset, so set them as RESET_RESUME flag.
	 */
	if (FUNC1(udev))
		udev->quirks |= FUNC3(udev,
				usb_amd_resume_quirk_list);

	udev->quirks ^= FUNC2(udev);

	if (udev->quirks)
		FUNC0(&udev->dev, "USB quirks for this device: %x\n",
			udev->quirks);

#ifdef CONFIG_USB_DEFAULT_PERSIST
	if (!(udev->quirks & USB_QUIRK_RESET))
		udev->persist_enabled = 1;
#else
	/* Hubs are automatically enabled for USB-PERSIST */
	if (udev->descriptor.bDeviceClass == USB_CLASS_HUB)
		udev->persist_enabled = 1;
#endif	/* CONFIG_USB_DEFAULT_PERSIST */
}