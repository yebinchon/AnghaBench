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
typedef  size_t u32 ;
struct udc {int /*<<< orphan*/  lock; TYPE_2__* regs; int /*<<< orphan*/ * ep; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  cfg; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_DEVCFG_SPD ; 
 int /*<<< orphan*/  UDC_DEVCFG_SPD_FS ; 
 size_t UDC_EP0IN_IX ; 
 size_t UDC_EP_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soft_reset_occured ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct udc*) ; 
 int /*<<< orphan*/  FUNC11 (struct udc*) ; 
 scalar_t__ use_fullspeed ; 
 int /*<<< orphan*/  FUNC12 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(unsigned long par)
{
	struct udc *dev = (struct udc *)(*((struct udc **) par));
	u32 tmp;

	FUNC1(dev, "Tasklet disconnect\n");
	FUNC6(&dev->lock);

	if (dev->driver) {
		FUNC7(&dev->lock);
		dev->driver->disconnect(&dev->gadget);
		FUNC5(&dev->lock);

		/* empty queues */
		for (tmp = 0; tmp < UDC_EP_NUM; tmp++)
			FUNC2(&dev->ep[tmp]);

	}

	/* disable ep0 */
	FUNC3(dev->regs,
			&dev->ep[UDC_EP0IN_IX]);


	if (!soft_reset_occured) {
		/* init controller by soft reset */
		FUNC11(dev);
		soft_reset_occured++;
	}

	/* re-enable dev interrupts */
	FUNC10(dev);
	/* back to full speed ? */
	if (use_fullspeed) {
		tmp = FUNC4(&dev->regs->cfg);
		tmp = FUNC0(tmp, UDC_DEVCFG_SPD_FS, UDC_DEVCFG_SPD);
		FUNC12(tmp, &dev->regs->cfg);
	}

	FUNC8(&dev->lock);
}