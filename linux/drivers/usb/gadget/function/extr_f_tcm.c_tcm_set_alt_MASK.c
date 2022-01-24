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
struct usb_function {int dummy; } ;
struct guas_setup_wq {unsigned int alt; int /*<<< orphan*/  work; struct f_uas* fu; } ;
struct f_uas {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int USB_GADGET_DELAYED_STATUS ; 
 unsigned int USB_G_ALT_INT_BBB ; 
 unsigned int USB_G_ALT_INT_UAS ; 
 struct guas_setup_wq* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcm_delayed_set_alt ; 
 struct f_uas* FUNC3 (struct usb_function*) ; 

__attribute__((used)) static int FUNC4(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_uas *fu = FUNC3(f);

	if ((alt == USB_G_ALT_INT_BBB) || (alt == USB_G_ALT_INT_UAS)) {
		struct guas_setup_wq *work;

		work = FUNC1(sizeof(*work), GFP_ATOMIC);
		if (!work)
			return -ENOMEM;
		FUNC0(&work->work, tcm_delayed_set_alt);
		work->fu = fu;
		work->alt = alt;
		FUNC2(&work->work);
		return USB_GADGET_DELAYED_STATUS;
	}
	return -EOPNOTSUPP;
}