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
struct usb_hcd {TYPE_1__* driver; int /*<<< orphan*/  flags; } ;
struct sa1111_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct usb_hcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 struct usb_hcd* FUNC0 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sa1111_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *_dev)
{
	struct sa1111_dev *dev = FUNC4(_dev);
	struct usb_hcd *hcd = FUNC0(dev);

	if (FUNC3(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags)) {
		hcd->driver->shutdown(hcd);
		FUNC1(dev);
	}
}