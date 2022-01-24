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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; scalar_t__ has_tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC1(struct usb_hcd *hcd, int portnum)
{
	FUNC0(hcd->self.controller, "port %d cannot be enabled\n", portnum);
	if (hcd->has_tt) {
		FUNC0(hcd->self.controller,
			"Maybe you have connected a low speed device?\n");

		FUNC0(hcd->self.controller,
			"We do not support low speed devices\n");
	} else {
		FUNC0(hcd->self.controller,
			"Maybe your device is not a high speed device?\n");
		FUNC0(hcd->self.controller,
			"The USB host controller does not support full speed "
			"nor low speed devices\n");
		FUNC0(hcd->self.controller,
			"You can reconfigure the host controller to have "
			"full speed support\n");
	}

	return 0;
}