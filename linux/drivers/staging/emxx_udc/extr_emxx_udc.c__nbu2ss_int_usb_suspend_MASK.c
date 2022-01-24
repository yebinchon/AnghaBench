#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nbu2ss_udc {int usb_suspended; TYPE_1__* p_regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* suspend ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  USB_CONTROL; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vbus_gpio ; 

__attribute__((used)) static inline void FUNC5(struct nbu2ss_udc *udc)
{
	u32	reg_dt;

	if (udc->usb_suspended == 0) {
		reg_dt = FUNC1(vbus_gpio);

		if (reg_dt == 0)
			return;

		udc->usb_suspended = 1;
		if (udc->driver && udc->driver->suspend) {
			FUNC3(&udc->lock);
			udc->driver->suspend(&udc->gadget);
			FUNC2(&udc->lock);
		}

		FUNC0(&udc->p_regs->USB_CONTROL, SUSPEND);
	}
}