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
struct usb_device {scalar_t__ authorized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 

int FUNC3(struct usb_device *usb_dev)
{
	FUNC0(usb_dev);
	if (usb_dev->authorized == 0)
		goto out_unauthorized;

	usb_dev->authorized = 0;
	FUNC1(usb_dev, -1);

out_unauthorized:
	FUNC2(usb_dev);
	return 0;
}