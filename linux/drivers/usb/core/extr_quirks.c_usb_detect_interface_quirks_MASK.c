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
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_interface_quirk_list ; 

void FUNC2(struct usb_device *udev)
{
	u32 quirks;

	quirks = FUNC1(udev, usb_interface_quirk_list);
	if (quirks == 0)
		return;

	FUNC0(&udev->dev, "USB interface quirks for this device: %x\n",
		quirks);
	udev->quirks |= quirks;
}