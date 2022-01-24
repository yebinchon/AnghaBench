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
 int /*<<< orphan*/  f_acm ; 
 int /*<<< orphan*/  f_ecm ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_serial ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_desc ; 
 int FUNC3 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_configuration*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_configuration *c)
{
	int	status;

	if (FUNC2(c->cdev->gadget)) {
		c->descriptors = otg_desc;
		c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	f_ecm = FUNC4(fi_ecm);
	if (FUNC0(f_ecm)) {
		status = FUNC1(f_ecm);
		goto err_get_ecm;
	}

	status = FUNC3(c, f_ecm);
	if (status)
		goto err_add_ecm;

	f_acm = FUNC4(fi_serial);
	if (FUNC0(f_acm)) {
		status = FUNC1(f_acm);
		goto err_get_acm;
	}

	status = FUNC3(c, f_acm);
	if (status)
		goto err_add_acm;
	return 0;

err_add_acm:
	FUNC5(f_acm);
err_get_acm:
	FUNC6(c, f_ecm);
err_add_ecm:
	FUNC5(f_ecm);
err_get_ecm:
	return status;
}