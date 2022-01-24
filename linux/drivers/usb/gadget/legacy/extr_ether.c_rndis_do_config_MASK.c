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
struct usb_configuration {int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  descriptors; TYPE_1__* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CONFIG_ATT_WAKEUP ; 
 int /*<<< orphan*/  f_rndis ; 
 int /*<<< orphan*/  fi_rndis ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_desc ; 
 int FUNC3 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_configuration *c)
{
	int status;

	/* FIXME alloc iConfiguration string, set it in c->strings */

	if (FUNC2(c->cdev->gadget)) {
		c->descriptors = otg_desc;
		c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	f_rndis = FUNC4(fi_rndis);
	if (FUNC0(f_rndis))
		return FUNC1(f_rndis);

	status = FUNC3(c, f_rndis);
	if (status < 0)
		FUNC5(f_rndis);

	return status;
}