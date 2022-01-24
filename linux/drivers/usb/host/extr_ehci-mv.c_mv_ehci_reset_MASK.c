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
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {int has_tt; TYPE_1__ self; } ;
struct ehci_hcd_mv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct usb_hcd*) ; 
 struct ehci_hcd_mv* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct device *dev = hcd->self.controller;
	struct ehci_hcd_mv *ehci_mv = FUNC2(hcd);
	int retval;

	if (ehci_mv == NULL) {
		FUNC0(dev, "Can not find private ehci data\n");
		return -ENODEV;
	}

	hcd->has_tt = 1;

	retval = FUNC1(hcd);
	if (retval)
		FUNC0(dev, "ehci_setup failed %d\n", retval);

	return retval;
}