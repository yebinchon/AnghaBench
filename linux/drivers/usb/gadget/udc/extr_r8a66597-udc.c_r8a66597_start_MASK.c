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
struct usb_gadget_driver {scalar_t__ max_speed; int /*<<< orphan*/  setup; } ;
struct usb_gadget {int dummy; } ;
struct r8a66597 {int old_vbus; int /*<<< orphan*/  timer; int /*<<< orphan*/  scount; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  INTENB0 ; 
 int /*<<< orphan*/  INTSTS0 ; 
 int /*<<< orphan*/  R8A66597_MAX_SAMPLING ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  VBSE ; 
 int VBSTS ; 
 struct r8a66597* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct r8a66597 *r8a66597 = FUNC0(gadget);

	if (!driver
			|| driver->max_speed < USB_SPEED_HIGH
			|| !driver->setup)
		return -EINVAL;
	if (!r8a66597)
		return -ENODEV;

	/* hook up the driver */
	r8a66597->driver = driver;

	FUNC1(r8a66597);
	FUNC4(r8a66597, VBSE, INTENB0);
	if (FUNC5(r8a66597, INTSTS0) & VBSTS) {
		FUNC6(r8a66597);
		/* start vbus sampling */
		r8a66597->old_vbus = FUNC5(r8a66597,
					 INTSTS0) & VBSTS;
		r8a66597->scount = R8A66597_MAX_SAMPLING;
		FUNC2(&r8a66597->timer, jiffies + FUNC3(50));
	}

	return 0;
}