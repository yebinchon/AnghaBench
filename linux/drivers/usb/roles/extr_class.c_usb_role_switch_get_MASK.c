#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* parent; } ;
struct usb_role_switch {TYPE_3__ dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_role_switch*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct usb_role_switch* FUNC3 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_role_switch* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_role_switch_match ; 

struct usb_role_switch *FUNC6(struct device *dev)
{
	struct usb_role_switch *sw;

	sw = FUNC5(FUNC2(dev));
	if (!sw)
		sw = FUNC3(dev, "usb-role-switch", NULL,
						  usb_role_switch_match);

	if (!FUNC0(sw))
		FUNC1(!FUNC4(sw->dev.parent->driver->owner));

	return sw;
}