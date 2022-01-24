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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct usb_role_switch {int (* set ) (int /*<<< orphan*/ ,int) ;int role; int /*<<< orphan*/  lock; TYPE_1__ dev; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_role_switch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct usb_role_switch *sw, enum usb_role role)
{
	int ret;

	if (FUNC0(sw))
		return 0;

	FUNC1(&sw->lock);

	ret = sw->set(sw->dev.parent, role);
	if (!ret)
		sw->role = role;

	FUNC2(&sw->lock);

	return ret;
}