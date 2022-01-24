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
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct usb_bus {scalar_t__ root_hub; } ;
struct gb_usb_device {TYPE_1__* gbphy_dev; int /*<<< orphan*/  connection; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_USB_TYPE_HCD_START ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_bus* FUNC2 (struct usb_hcd*) ; 
 struct gb_usb_device* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct usb_bus *bus = FUNC2(hcd);
	struct gb_usb_device *dev = FUNC3(hcd);
	int ret;

	ret = FUNC1(dev->connection, GB_USB_TYPE_HCD_START,
				NULL, 0, NULL, 0);
	if (ret) {
		FUNC0(&dev->gbphy_dev->dev, "HCD start failed '%d'\n", ret);
		return ret;
	}

	hcd->state = HC_STATE_RUNNING;
	if (bus->root_hub)
		FUNC4(hcd);
	return 0;
}