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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct isp1760_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  vbus_timer; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_MODE ; 
 int DC_VBUSSTAT ; 
 scalar_t__ ISP1760_VBUS_POLL_INTERVAL ; 
 scalar_t__ USB_STATE_POWERED ; 
 struct isp1760_udc* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1760_udc*) ; 
 int FUNC2 (struct isp1760_udc*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct isp1760_udc* udc ; 
 int /*<<< orphan*/  vbus_timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct isp1760_udc *udc = FUNC0(udc, t, vbus_timer);
	unsigned long flags;

	FUNC4(&udc->lock, flags);

	if (!(FUNC2(udc, DC_MODE) & DC_VBUSSTAT))
		FUNC1(udc);
	else if (udc->gadget.state >= USB_STATE_POWERED)
		FUNC3(&udc->vbus_timer,
			  jiffies + ISP1760_VBUS_POLL_INTERVAL);

	FUNC5(&udc->lock, flags);
}