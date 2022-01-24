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
struct dwc3_ep {int number; int /*<<< orphan*/  flags; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_EP_WEDGE ; 
 int FUNC0 (struct usb_ep*,int) ; 
 int FUNC1 (struct dwc3_ep*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc3_ep* FUNC4 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC5(struct usb_ep *ep)
{
	struct dwc3_ep			*dep = FUNC4(ep);
	struct dwc3			*dwc = dep->dwc;
	unsigned long			flags;
	int				ret;

	FUNC2(&dwc->lock, flags);
	dep->flags |= DWC3_EP_WEDGE;

	if (dep->number == 0 || dep->number == 1)
		ret = FUNC0(ep, 1);
	else
		ret = FUNC1(dep, 1, false);
	FUNC3(&dwc->lock, flags);

	return ret;
}