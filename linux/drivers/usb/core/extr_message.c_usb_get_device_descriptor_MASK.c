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
struct usb_device_descriptor {int dummy; } ;
struct usb_device {int /*<<< orphan*/  descriptor; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  USB_DT_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device_descriptor*) ; 
 struct usb_device_descriptor* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_device_descriptor*,unsigned int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_descriptor*,unsigned int) ; 

int FUNC4(struct usb_device *dev, unsigned int size)
{
	struct usb_device_descriptor *desc;
	int ret;

	if (size > sizeof(*desc))
		return -EINVAL;
	desc = FUNC1(sizeof(*desc), GFP_NOIO);
	if (!desc)
		return -ENOMEM;

	ret = FUNC3(dev, USB_DT_DEVICE, 0, desc, size);
	if (ret >= 0)
		FUNC2(&dev->descriptor, desc, size);
	FUNC0(desc);
	return ret;
}