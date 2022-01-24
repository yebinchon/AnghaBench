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
typedef  int u16 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; } ;
struct renesas_usb3 {int /*<<< orphan*/  ep0_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb3_pipe0_set_sel_completion ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct renesas_usb3 *usb3,
				 struct usb_ctrlrequest *ctrl)
{
	u16 w_length = FUNC1(ctrl->wLength);

	if (w_length != 6)
		return true;	/* stall */

	FUNC0(FUNC3(usb3), "set_sel: req = %p\n",
		FUNC4(usb3->ep0_req));
	FUNC2(usb3, NULL, 6, usb3_pipe0_set_sel_completion);

	return false;
}