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
struct isp1760_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  driver; TYPE_1__ gadget; int /*<<< orphan*/  ep0_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1760_CTRL_SETUP ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct isp1760_udc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct isp1760_udc *udc)
{
	unsigned long flags;

	FUNC1(&udc->lock, flags);

	/*
	 * The bus reset has reset most registers to their default value,
	 * reinitialize the UDC hardware.
	 */
	FUNC0(udc);

	udc->ep0_state = ISP1760_CTRL_SETUP;
	udc->gadget.speed = USB_SPEED_FULL;

	FUNC3(&udc->gadget, udc->driver);

	FUNC2(&udc->lock, flags);
}