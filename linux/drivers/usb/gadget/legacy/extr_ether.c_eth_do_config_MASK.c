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
struct usb_configuration {TYPE_1__* cdev; int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  descriptors; } ;
struct TYPE_2__ {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CONFIG_ATT_WAKEUP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_ecm ; 
 int /*<<< orphan*/  f_eem ; 
 int /*<<< orphan*/  f_geth ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_eem ; 
 int /*<<< orphan*/  fi_geth ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_desc ; 
 int FUNC4 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_eem ; 

__attribute__((used)) static int FUNC7(struct usb_configuration *c)
{
	int status = 0;

	/* FIXME alloc iConfiguration string, set it in c->strings */

	if (FUNC3(c->cdev->gadget)) {
		c->descriptors = otg_desc;
		c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	if (use_eem) {
		f_eem = FUNC5(fi_eem);
		if (FUNC0(f_eem))
			return FUNC1(f_eem);

		status = FUNC4(c, f_eem);
		if (status < 0)
			FUNC6(f_eem);

		return status;
	} else if (FUNC2(c->cdev->gadget)) {
		f_ecm = FUNC5(fi_ecm);
		if (FUNC0(f_ecm))
			return FUNC1(f_ecm);

		status = FUNC4(c, f_ecm);
		if (status < 0)
			FUNC6(f_ecm);

		return status;
	} else {
		f_geth = FUNC5(fi_geth);
		if (FUNC0(f_geth))
			return FUNC1(f_geth);

		status = FUNC4(c, f_geth);
		if (status < 0)
			FUNC6(f_geth);

		return status;
	}

}