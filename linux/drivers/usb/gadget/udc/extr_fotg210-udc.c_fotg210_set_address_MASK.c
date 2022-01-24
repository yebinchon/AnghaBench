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
struct usb_ctrlrequest {int wValue; } ;
struct fotg210_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_udc*,int) ; 

__attribute__((used)) static void FUNC3(struct fotg210_udc *fotg210,
				struct usb_ctrlrequest *ctrl)
{
	if (ctrl->wValue >= 0x0100) {
		FUNC0(fotg210);
	} else {
		FUNC2(fotg210, ctrl->wValue);
		FUNC1(fotg210);
	}
}