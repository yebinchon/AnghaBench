#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget {int dummy; } ;
struct usb_configuration {TYPE_1__* cdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  descriptors; } ;
struct TYPE_3__ {struct usb_gadget* gadget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CONFIG_ATT_WAKEUP ; 
 int /*<<< orphan*/  f_printer ; 
 int /*<<< orphan*/  fi_printer ; 
 scalar_t__ FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  otg_desc ; 
 TYPE_2__ printer_cfg_driver ; 
 int FUNC3 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_configuration *c)
{
	struct usb_gadget	*gadget = c->cdev->gadget;
	int			status = 0;

	FUNC4(gadget);

	FUNC5(gadget);

	if (FUNC2(gadget)) {
		printer_cfg_driver.descriptors = otg_desc;
		printer_cfg_driver.bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	f_printer = FUNC6(fi_printer);
	if (FUNC0(f_printer))
		return FUNC1(f_printer);

	status = FUNC3(c, f_printer);
	if (status < 0)
		FUNC7(f_printer);

	return status;
}