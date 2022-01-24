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
struct TYPE_4__ {int wIndex; int wLength; int bRequestType; int /*<<< orphan*/  wValue; } ;
struct nbu2ss_udc {int /*<<< orphan*/  devstate; TYPE_1__* p_regs; scalar_t__ curr_config; TYPE_2__ ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  USB_CONTROL; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF ; 
 int EINVAL ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int /*<<< orphan*/  USB_STATE_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nbu2ss_udc *udc)
{
	u32 config_value = (u32)(FUNC2(udc->ctrl.wValue) & 0x00ff);

	if ((udc->ctrl.wIndex != 0x0000)	||
	    (udc->ctrl.wLength != 0x0000)	||
		(udc->ctrl.bRequestType != 0x00)) {
		return -EINVAL;
	}

	udc->curr_config = config_value;

	if (config_value > 0) {
		FUNC1(&udc->p_regs->USB_CONTROL, CONF);
		udc->devstate = USB_STATE_CONFIGURED;

	} else {
		FUNC0(&udc->p_regs->USB_CONTROL, CONF);
		udc->devstate = USB_STATE_ADDRESS;
	}

	return 0;
}