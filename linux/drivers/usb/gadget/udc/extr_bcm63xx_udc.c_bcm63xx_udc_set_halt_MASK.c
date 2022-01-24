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
struct bcm63xx_udc {int /*<<< orphan*/  lock; } ;
struct bcm63xx_ep {int halted; struct bcm63xx_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,struct bcm63xx_ep*,int) ; 
 struct bcm63xx_ep* FUNC1 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_ep *ep, int value)
{
	struct bcm63xx_ep *bep = FUNC1(ep);
	struct bcm63xx_udc *udc = bep->udc;
	unsigned long flags;

	FUNC2(&udc->lock, flags);
	FUNC0(udc, bep, !!value);
	bep->halted = value;
	FUNC3(&udc->lock, flags);

	return 0;
}