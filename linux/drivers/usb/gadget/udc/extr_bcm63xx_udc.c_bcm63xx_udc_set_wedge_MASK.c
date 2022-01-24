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
struct bcm63xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  wedgemap; } ;
struct bcm63xx_ep {int /*<<< orphan*/  ep_num; struct bcm63xx_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,struct bcm63xx_ep*,int) ; 
 struct bcm63xx_ep* FUNC1 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct usb_ep *ep)
{
	struct bcm63xx_ep *bep = FUNC1(ep);
	struct bcm63xx_udc *udc = bep->udc;
	unsigned long flags;

	FUNC3(&udc->lock, flags);
	FUNC2(bep->ep_num, &udc->wedgemap);
	FUNC0(udc, bep, true);
	FUNC4(&udc->lock, flags);

	return 0;
}