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
typedef  scalar_t__ u16 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; } ;
struct TYPE_2__ {scalar_t__ isoch_delay; } ;
struct dwc3 {TYPE_1__ gadget; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
	u16		wLength;
	u16		wValue;
	u16		wIndex;

	wValue = FUNC0(ctrl->wValue);
	wLength = FUNC0(ctrl->wLength);
	wIndex = FUNC0(ctrl->wIndex);

	if (wIndex || wLength)
		return -EINVAL;

	dwc->gadget.isoch_delay = wValue;

	return 0;
}