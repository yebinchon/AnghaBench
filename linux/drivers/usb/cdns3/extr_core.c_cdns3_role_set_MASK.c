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
struct device {int dummy; } ;
struct cdns3 {int role_override; scalar_t__ dr_mode; int role; int /*<<< orphan*/  dev; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
#define  USB_ROLE_DEVICE 130 
#define  USB_ROLE_HOST 129 
#define  USB_ROLE_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct cdns3*) ; 
 int FUNC1 (struct cdns3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct cdns3* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, enum usb_role role)
{
	struct cdns3 *cdns = FUNC4(dev);
	int ret = 0;

	FUNC5(cdns->dev);

	/*
	 * FIXME: switch role framework should be extended to meet
	 * requirements. Driver assumes that role can be controlled
	 * by SW or HW. Temporary workaround is to use USB_ROLE_NONE to
	 * switch from SW to HW control.
	 *
	 * For dr_mode == USB_DR_MODE_OTG:
	 *	if user sets USB_ROLE_HOST or USB_ROLE_DEVICE then driver
	 *	sets role_override flag and forces that role.
	 *	if user sets USB_ROLE_NONE, driver clears role_override and lets
	 *	HW state machine take over.
	 *
	 * For dr_mode != USB_DR_MODE_OTG:
	 *	Assumptions:
	 *	1. Restricted user control between NONE and dr_mode.
	 *	2. Driver doesn't need to rely on role_override flag.
	 *	3. Driver needs to ensure that HW state machine is never called
	 *	   if dr_mode != USB_DR_MODE_OTG.
	 */
	if (role == USB_ROLE_NONE)
		cdns->role_override = 0;
	else
		cdns->role_override = 1;

	/*
	 * HW state might have changed so driver need to trigger
	 * HW state machine if dr_mode == USB_DR_MODE_OTG.
	 */
	if (!cdns->role_override && cdns->dr_mode == USB_DR_MODE_OTG) {
		FUNC0(cdns);
		goto pm_put;
	}

	if (cdns->role == role)
		goto pm_put;

	if (cdns->dr_mode == USB_DR_MODE_HOST) {
		switch (role) {
		case USB_ROLE_NONE:
		case USB_ROLE_HOST:
			break;
		default:
			ret = -EPERM;
			goto pm_put;
		}
	}

	if (cdns->dr_mode == USB_DR_MODE_PERIPHERAL) {
		switch (role) {
		case USB_ROLE_NONE:
		case USB_ROLE_DEVICE:
			break;
		default:
			ret = -EPERM;
			goto pm_put;
		}
	}

	FUNC2(cdns);
	ret = FUNC1(cdns, role);
	if (ret) {
		FUNC3(cdns->dev, "set role %d has failed\n", role);
		ret = -EPERM;
	}

pm_put:
	FUNC6(cdns->dev);
	return ret;
}