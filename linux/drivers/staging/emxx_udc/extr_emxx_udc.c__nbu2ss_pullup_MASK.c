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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct nbu2ss_udc {scalar_t__ vbus_active; TYPE_2__ gadget; TYPE_1__* p_regs; scalar_t__ driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  USB_CONTROL; } ;

/* Variables and functions */
 int CONNECTB ; 
 int ESHUTDOWN ; 
 int PUE2 ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct nbu2ss_udc *udc, int is_on)
{
	u32	reg_dt;

	if (udc->vbus_active == 0)
		return -ESHUTDOWN;

	if (is_on) {
		/* D+ Pullup */
		if (udc->driver) {
			reg_dt = (FUNC0(&udc->p_regs->USB_CONTROL)
				| PUE2) & ~(u32)CONNECTB;

			FUNC1(&udc->p_regs->USB_CONTROL, reg_dt);
		}

	} else {
		/* D+ Pulldown */
		reg_dt = (FUNC0(&udc->p_regs->USB_CONTROL) | CONNECTB)
			& ~(u32)PUE2;

		FUNC1(&udc->p_regs->USB_CONTROL, reg_dt);
		udc->gadget.speed = USB_SPEED_UNKNOWN;
	}

	return 0;
}