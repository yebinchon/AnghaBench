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
struct usb_interface {int minor; int /*<<< orphan*/ * usb_dev; int /*<<< orphan*/  dev; } ;
struct usb_class_driver {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minor_rwsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* usb_class ; 
 int /*<<< orphan*/ ** usb_minors ; 

void FUNC6(struct usb_interface *intf,
			struct usb_class_driver *class_driver)
{
	if (intf->minor == -1)
		return;

	FUNC2(&intf->dev, "removing %d minor\n", intf->minor);
	FUNC3(usb_class->class, FUNC0(USB_MAJOR, intf->minor));

	FUNC4(&minor_rwsem);
	usb_minors[intf->minor] = NULL;
	FUNC5(&minor_rwsem);

	intf->usb_dev = NULL;
	intf->minor = -1;
	FUNC1();
}