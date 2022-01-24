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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct usba_udc {int /*<<< orphan*/  lock; TYPE_1__ gadget; scalar_t__ suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  USBA_DISABLE_MASK ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usba_udc *udc)
{
	unsigned long flags;

	if (udc->suspended)
		return;

	FUNC1(&udc->lock, flags);
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	FUNC0(udc);

	/* This will also disable the DP pullup */
	FUNC4(udc, 0);
	FUNC5(udc, CTRL, USBA_DISABLE_MASK);
	FUNC2(&udc->lock, flags);

	FUNC3(udc);
}