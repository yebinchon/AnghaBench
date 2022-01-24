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
struct usb_ep {int dummy; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct usb_ep*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc3_ep* FUNC3 (struct usb_ep*) ; 

int FUNC4(struct usb_ep *ep, int value)
{
	struct dwc3_ep			*dep = FUNC3(ep);
	struct dwc3			*dwc = dep->dwc;
	unsigned long			flags;
	int				ret;

	FUNC1(&dwc->lock, flags);
	ret = FUNC0(ep, value);
	FUNC2(&dwc->lock, flags);

	return ret;
}