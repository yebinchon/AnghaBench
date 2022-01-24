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
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_composite_dev {int /*<<< orphan*/  req; TYPE_1__* gadget; } ;
struct fsg_common {int can_stall; TYPE_1__* gadget; struct usb_composite_dev* cdev; int /*<<< orphan*/  ep0req; int /*<<< orphan*/  ep0; } ;
struct TYPE_4__ {int /*<<< orphan*/  iInterface; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FSG_STRING_INTERFACE ; 
 scalar_t__ FUNC1 (struct usb_string*) ; 
 int FUNC2 (struct usb_string*) ; 
 TYPE_2__ fsg_intf_desc ; 
 int /*<<< orphan*/  fsg_strings ; 
 int /*<<< orphan*/  fsg_strings_array ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 struct usb_string* FUNC4 (struct usb_composite_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct fsg_common *common,
			 struct usb_composite_dev *cdev, bool can_stall)
{
	struct usb_string *us;

	common->gadget = cdev->gadget;
	common->ep0 = cdev->gadget->ep0;
	common->ep0req = cdev->req;
	common->cdev = cdev;

	us = FUNC4(cdev, fsg_strings_array,
				 FUNC0(fsg_strings));
	if (FUNC1(us))
		return FUNC2(us);

	fsg_intf_desc.iInterface = us[FSG_STRING_INTERFACE].id;

	/*
	 * Some peripheral controllers are known not to be able to
	 * halt bulk endpoints correctly.  If one of them is present,
	 * disable stalls.
	 */
	common->can_stall = can_stall &&
			FUNC3(common->gadget);

	return 0;
}