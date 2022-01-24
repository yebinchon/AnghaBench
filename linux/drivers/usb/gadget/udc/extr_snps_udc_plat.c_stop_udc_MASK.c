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
typedef  int /*<<< orphan*/  u32 ;
struct udc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ connected; int /*<<< orphan*/ * ep; int /*<<< orphan*/  gadget; TYPE_2__* driver; TYPE_1__* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDC_DEVCTL_SRX_FLUSH ; 
 int UDC_EP_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct udc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct udc *udc)
{
	int tmp;
	u32 reg;

	FUNC5(&udc->lock);

	/* Flush the receieve fifo */
	reg = FUNC4(&udc->regs->ctl);
	reg |= FUNC0(UDC_DEVCTL_SRX_FLUSH);
	FUNC9(reg, &udc->regs->ctl);

	reg = FUNC4(&udc->regs->ctl);
	reg &= ~(FUNC0(UDC_DEVCTL_SRX_FLUSH));
	FUNC9(reg, &udc->regs->ctl);
	FUNC1(udc->dev, "ep rx queue flushed\n");

	/* Mask interrupts. Required more so when the
	 * UDC is connected to a DRD phy.
	 */
	FUNC8(udc);

	/* Disconnect gadget driver */
	if (udc->driver) {
		FUNC6(&udc->lock);
		udc->driver->disconnect(&udc->gadget);
		FUNC5(&udc->lock);

		/* empty queues */
		for (tmp = 0; tmp < UDC_EP_NUM; tmp++)
			FUNC3(&udc->ep[tmp]);
	}
	udc->connected = 0;

	FUNC6(&udc->lock);
	FUNC2(udc->dev, "Device disconnected\n");
}