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
struct usb_device_id {int match_flags; scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int USB_DEVICE_ID_MATCH_INT_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,struct usb_device_id const*) ; 

__attribute__((used)) static u32 FUNC2(struct usb_device *udev,
				    const struct usb_device_id *id)
{
	u32 quirks = 0;

	for (; id->match_flags; id++) {
		if (!FUNC1(udev, id))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_INFO) &&
		    !FUNC0(udev, id))
			continue;

		quirks |= (u32)(id->driver_info);
	}

	return quirks;
}