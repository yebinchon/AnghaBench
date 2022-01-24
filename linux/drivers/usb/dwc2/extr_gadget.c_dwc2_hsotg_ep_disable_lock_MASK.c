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
struct dwc2_hsotg_ep {struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct usb_ep*) ; 
 struct dwc2_hsotg_ep* FUNC1 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_ep *ep)
{
	struct dwc2_hsotg_ep *hs_ep = FUNC1(ep);
	struct dwc2_hsotg *hsotg = hs_ep->parent;
	unsigned long flags;
	int ret;

	FUNC2(&hsotg->lock, flags);
	ret = FUNC0(ep);
	FUNC3(&hsotg->lock, flags);
	return ret;
}