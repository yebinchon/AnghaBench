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
struct device {struct device* parent; } ;
struct usb_interface {scalar_t__ authorized; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 

void FUNC3(struct usb_interface *intf)
{
	struct device *dev = &intf->dev;

	FUNC0(dev->parent);

	if (intf->authorized) {
		FUNC0(dev);
		intf->authorized = 0;
		FUNC1(dev);

		FUNC2(intf);
	}

	FUNC1(dev->parent);
}