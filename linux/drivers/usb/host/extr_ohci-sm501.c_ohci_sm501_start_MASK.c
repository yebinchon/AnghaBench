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
struct TYPE_2__ {int /*<<< orphan*/  bus_name; struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct device *dev = hcd->self.controller;
	int ret;

	ret = FUNC2(FUNC1(hcd));
	if (ret < 0) {
		FUNC0(dev, "can't start %s", hcd->self.bus_name);
		FUNC3(hcd);
	}

	return ret;
}