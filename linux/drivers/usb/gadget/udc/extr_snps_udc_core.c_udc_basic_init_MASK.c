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
struct TYPE_3__ {int /*<<< orphan*/  speed; } ;
struct udc {scalar_t__ data_ep_queued; scalar_t__ data_ep_enabled; TYPE_2__* regs; TYPE_1__ gadget; } ;
struct TYPE_4__ {int /*<<< orphan*/  cfg; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_DEVCFG_CSR_PRG ; 
 int /*<<< orphan*/  UDC_DEVCFG_RWKP ; 
 int /*<<< orphan*/  UDC_DEVCFG_SP ; 
 int /*<<< orphan*/  UDC_DEVCTL_RDE ; 
 int /*<<< orphan*/  UDC_DEVCTL_TDE ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct udc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ set_rde ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udc_pollstall_timer ; 
 int /*<<< orphan*/  udc_timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct udc *dev)
{
	u32	tmp;

	FUNC2(dev, "udc_basic_init()\n");

	dev->gadget.speed = USB_SPEED_UNKNOWN;

	/* stop RDE timer */
	if (FUNC6(&udc_timer)) {
		set_rde = 0;
		FUNC4(&udc_timer, jiffies - 1);
	}
	/* stop poll stall timer */
	if (FUNC6(&udc_pollstall_timer))
		FUNC4(&udc_pollstall_timer, jiffies - 1);
	/* disable DMA */
	tmp = FUNC5(&dev->regs->ctl);
	tmp &= FUNC1(UDC_DEVCTL_RDE);
	tmp &= FUNC1(UDC_DEVCTL_TDE);
	FUNC7(tmp, &dev->regs->ctl);

	/* enable dynamic CSR programming */
	tmp = FUNC5(&dev->regs->cfg);
	tmp |= FUNC0(UDC_DEVCFG_CSR_PRG);
	/* set self powered */
	tmp |= FUNC0(UDC_DEVCFG_SP);
	/* set remote wakeupable */
	tmp |= FUNC0(UDC_DEVCFG_RWKP);
	FUNC7(tmp, &dev->regs->cfg);

	FUNC3(dev);

	dev->data_ep_enabled = 0;
	dev->data_ep_queued = 0;
}