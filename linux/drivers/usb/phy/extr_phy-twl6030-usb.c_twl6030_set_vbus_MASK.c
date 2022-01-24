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
struct twl6030_usb {int vbus_enable; int /*<<< orphan*/  set_vbus_work; } ;
struct phy_companion {int dummy; } ;

/* Variables and functions */
 struct twl6030_usb* FUNC0 (struct phy_companion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct phy_companion *comparator, bool enabled)
{
	struct twl6030_usb *twl = FUNC0(comparator);

	twl->vbus_enable = enabled;
	FUNC1(&twl->set_vbus_work);

	return 0;
}