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
 int /*<<< orphan*/  f_acm ; 
 int /*<<< orphan*/  f_acm_inst ; 
 int /*<<< orphan*/  f_msg ; 
 int /*<<< orphan*/  fi_msg ; 
 struct fsg_opts* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_desc ; 
 int FUNC4 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_configuration*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_configuration *c)
{
	struct fsg_opts *opts;
	int	status;

	if (FUNC3(c->cdev->gadget)) {
		c->descriptors = otg_desc;
		c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
	}

	opts = FUNC2(fi_msg);

	f_acm = FUNC5(f_acm_inst);
	if (FUNC0(f_acm))
		return FUNC1(f_acm);

	f_msg = FUNC5(fi_msg);
	if (FUNC0(f_msg)) {
		status = FUNC1(f_msg);
		goto put_acm;
	}

	status = FUNC4(c, f_acm);
	if (status < 0)
		goto put_msg;

	status = FUNC4(c, f_msg);
	if (status)
		goto remove_acm;

	return 0;
remove_acm:
	FUNC7(c, f_acm);
put_msg:
	FUNC6(f_msg);
put_acm:
	FUNC6(f_acm);
	return status;
}