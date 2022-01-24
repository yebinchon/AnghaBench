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
struct twl6030_usb {int dummy; } ;
struct phy_companion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL_MODULE_USB ; 
 int /*<<< orphan*/  USB_VBUS_CTRL_CLR ; 
 int /*<<< orphan*/  USB_VBUS_CTRL_SET ; 
 struct twl6030_usb* FUNC0 (struct phy_companion*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct twl6030_usb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_companion *comparator)
{
	struct twl6030_usb *twl = FUNC0(comparator);

	FUNC2(twl, TWL_MODULE_USB, 0x24, USB_VBUS_CTRL_SET);
	FUNC2(twl, TWL_MODULE_USB, 0x84, USB_VBUS_CTRL_SET);

	FUNC1(100);
	FUNC2(twl, TWL_MODULE_USB, 0xa0, USB_VBUS_CTRL_CLR);

	return 0;
}