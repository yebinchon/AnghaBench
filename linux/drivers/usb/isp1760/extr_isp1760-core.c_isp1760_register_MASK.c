#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int dummy; } ;
struct isp1760_device {unsigned int devflags; int /*<<< orphan*/  hcd; int /*<<< orphan*/  regs; int /*<<< orphan*/  rst_gpio; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_USB_ISP1760_HCD ; 
 int /*<<< orphan*/  CONFIG_USB_ISP1761_UDC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 unsigned long IRQF_SHARED ; 
 unsigned int ISP1760_FLAG_ISP1761 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct isp1760_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct isp1760_device* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct resource*,int,unsigned long,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct isp1760_device*) ; 
 int FUNC10 (struct isp1760_device*,int,unsigned long) ; 
 scalar_t__ FUNC11 () ; 

int FUNC12(struct resource *mem, int irq, unsigned long irqflags,
		     struct device *dev, unsigned int devflags)
{
	struct isp1760_device *isp;
	bool udc_disabled = !(devflags & ISP1760_FLAG_ISP1761);
	int ret;

	/*
	 * If neither the HCD not the UDC is enabled return an error, as no
	 * device would be registered.
	 */
	if ((!FUNC0(CONFIG_USB_ISP1760_HCD) || FUNC11()) &&
	    (!FUNC0(CONFIG_USB_ISP1761_UDC) || udc_disabled))
		return -ENODEV;

	isp = FUNC6(dev, sizeof(*isp), GFP_KERNEL);
	if (!isp)
		return -ENOMEM;

	isp->dev = dev;
	isp->devflags = devflags;

	isp->rst_gpio = FUNC4(dev, NULL, GPIOD_OUT_HIGH);
	if (FUNC1(isp->rst_gpio))
		return FUNC2(isp->rst_gpio);

	isp->regs = FUNC5(dev, mem);
	if (FUNC1(isp->regs))
		return FUNC2(isp->regs);

	FUNC9(isp);

	if (FUNC0(CONFIG_USB_ISP1760_HCD) && !FUNC11()) {
		ret = FUNC7(&isp->hcd, isp->regs, mem, irq,
					   irqflags | IRQF_SHARED, dev);
		if (ret < 0)
			return ret;
	}

	if (FUNC0(CONFIG_USB_ISP1761_UDC) && !udc_disabled) {
		ret = FUNC10(isp, irq, irqflags);
		if (ret < 0) {
			FUNC8(&isp->hcd);
			return ret;
		}
	}

	FUNC3(dev, isp);

	return 0;
}