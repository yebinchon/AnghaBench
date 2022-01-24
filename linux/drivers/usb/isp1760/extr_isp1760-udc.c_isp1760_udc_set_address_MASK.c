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
typedef  int u16 ;
struct TYPE_4__ {int state; } ;
struct isp1760_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ep; TYPE_2__ gadget; TYPE_1__* isp; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_ADDRESS ; 
 int DC_DEVEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int USB_STATE_ADDRESS ; 
 int USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_udc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(struct isp1760_udc *udc, u16 addr)
{
	if (addr > 127) {
		FUNC0(udc->isp->dev, "invalid device address %u\n", addr);
		return -EINVAL;
	}

	if (udc->gadget.state != USB_STATE_DEFAULT &&
	    udc->gadget.state != USB_STATE_ADDRESS) {
		FUNC0(udc->isp->dev, "can't set address in state %u\n",
			udc->gadget.state);
		return -EINVAL;
	}

	FUNC5(&udc->gadget, addr ? USB_STATE_ADDRESS :
			     USB_STATE_DEFAULT);

	FUNC2(udc, DC_ADDRESS, DC_DEVEN | addr);

	FUNC3(&udc->lock);
	FUNC1(&udc->ep[0], USB_DIR_OUT);
	FUNC4(&udc->lock);

	return 0;
}