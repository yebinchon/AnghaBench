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
struct fsg_opts {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CONFIG_ATT_WAKEUP ; 
 int /*<<< orphan*/  f_msg ; 
 int /*<<< orphan*/  fi_msg ; 
 struct fsg_opts* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_desc ; 
 int FUNC4 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_configuration *c)
{
	struct fsg_opts *opts;
	int ret;

	if (FUNC3(c->cdev->gadget)) {
		c->descriptors = otg_desc;
		c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	opts = FUNC2(fi_msg);

	f_msg = FUNC5(fi_msg);
	if (FUNC0(f_msg))
		return FUNC1(f_msg);

	ret = FUNC4(c, f_msg);
	if (ret)
		goto put_func;

	return 0;

put_func:
	FUNC6(f_msg);
	return ret;
}