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
struct f_uas {int flags; } ;

/* Variables and functions */
 int USBG_IS_BOT ; 
 int USBG_IS_UAS ; 
 int /*<<< orphan*/  FUNC0 (struct f_uas*) ; 
 struct f_uas* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (struct f_uas*) ; 

__attribute__((used)) static void FUNC3(struct usb_function *f)
{
	struct f_uas *fu = FUNC1(f);

	if (fu->flags & USBG_IS_UAS)
		FUNC2(fu);
	else if (fu->flags & USBG_IS_BOT)
		FUNC0(fu);
	fu->flags = 0;
}