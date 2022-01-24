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
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct usb_interface {int needs_binding; TYPE_1__ dev; } ;
struct usb_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct usb_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_driver*,struct usb_interface*) ; 

void FUNC3(struct usb_interface *intf)
{
	struct usb_driver *driver = FUNC1(intf->dev.driver);

	FUNC0(&intf->dev, "forced unbind\n");
	FUNC2(driver, intf);

	/* Mark the interface for later rebinding */
	intf->needs_binding = 1;
}