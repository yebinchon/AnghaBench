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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int /*<<< orphan*/  max_speed; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ops; } ;
struct udc {int irq; scalar_t__ chiprev; TYPE_1__* regs; TYPE_2__ gadget; int /*<<< orphan*/  dev; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  UDC_DEVCTL_SD ; 
 int /*<<< orphan*/  UDC_DRIVER_VERSION_STRING ; 
 scalar_t__ UDC_HSA0_REV ; 
 scalar_t__ UDC_HSB1_REV ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  gadget_release ; 
 char* mod_desc ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC4 (struct udc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct udc*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udc* udc ; 
 int /*<<< orphan*/  udc_ops ; 
 int /*<<< orphan*/  udc_pollstall_timer ; 
 int /*<<< orphan*/  udc_pollstall_timer_function ; 
 int /*<<< orphan*/  udc_timer ; 
 int /*<<< orphan*/  udc_timer_function ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct udc *dev)
{
	char		tmp[128];
	u32		reg;
	int		retval;

	/* device struct setup */
	dev->gadget.ops = &udc_ops;

	FUNC3(&dev->gadget.dev, "gadget");
	dev->gadget.name = name;
	dev->gadget.max_speed = USB_SPEED_HIGH;

	/* init registers, interrupts, ... */
	FUNC7(dev);

	FUNC2(dev->dev, "%s\n", mod_desc);

	FUNC6(tmp, sizeof(tmp), "%d", dev->irq);

	/* Print this device info for AMD chips only*/
	if (dev->chiprev == UDC_HSA0_REV ||
	    dev->chiprev == UDC_HSB1_REV) {
		FUNC2(dev->dev, "irq %s, pci mem %08lx, chip rev %02x(Geode5536 %s)\n",
			 tmp, dev->phys_addr, dev->chiprev,
			 (dev->chiprev == UDC_HSA0_REV) ?
			 "A0" : "B1");
		FUNC8(tmp, UDC_DRIVER_VERSION_STRING);
		if (dev->chiprev == UDC_HSA0_REV) {
			FUNC1(dev->dev, "chip revision is A0; too old\n");
			retval = -ENODEV;
			goto finished;
		}
		FUNC2(dev->dev,
			 "driver version: %s(for Geode5536 B1)\n", tmp);
	}

	udc = dev;

	retval = FUNC10(udc->dev, &dev->gadget,
					    gadget_release);
	if (retval)
		goto finished;

	/* timer init */
	FUNC9(&udc_timer, udc_timer_function, 0);
	FUNC9(&udc_pollstall_timer, udc_pollstall_timer_function, 0);

	/* set SD */
	reg = FUNC5(&dev->regs->ctl);
	reg |= FUNC0(UDC_DEVCTL_SD);
	FUNC11(reg, &dev->regs->ctl);

	/* print dev register info */
	FUNC4(dev);

	return 0;

finished:
	return retval;
}