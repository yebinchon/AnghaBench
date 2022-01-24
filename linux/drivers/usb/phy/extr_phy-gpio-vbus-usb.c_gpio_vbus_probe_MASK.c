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
struct usb_otg {int dummy; } ;
struct resource {int start; unsigned long flags; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_vbus_mach_info {int gpio_vbus; int gpio_pullup; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  gpio_pullup_inverted; } ;
struct TYPE_4__ {char* label; TYPE_1__* otg; int /*<<< orphan*/  set_suspend; int /*<<< orphan*/  set_power; int /*<<< orphan*/ * dev; } ;
struct gpio_vbus_data {int irq; TYPE_2__ phy; int /*<<< orphan*/ * vbus_draw; int /*<<< orphan*/  work; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  set_peripheral; TYPE_2__* usb_phy; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 unsigned long VBUS_IRQ_FLAGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct gpio_vbus_mach_info* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long,char*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  gpio_vbus_irq ; 
 int /*<<< orphan*/  gpio_vbus_set_peripheral ; 
 int /*<<< orphan*/  gpio_vbus_set_power ; 
 int /*<<< orphan*/  gpio_vbus_set_suspend ; 
 int /*<<< orphan*/  gpio_vbus_work ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct gpio_vbus_data*) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct gpio_vbus_mach_info *pdata = FUNC5(&pdev->dev);
	struct gpio_vbus_data *gpio_vbus;
	struct resource *res;
	int err, gpio, irq;
	unsigned long irqflags;

	if (!pdata || !FUNC13(pdata->gpio_vbus))
		return -EINVAL;
	gpio = pdata->gpio_vbus;

	gpio_vbus = FUNC8(&pdev->dev, sizeof(struct gpio_vbus_data),
				 GFP_KERNEL);
	if (!gpio_vbus)
		return -ENOMEM;

	gpio_vbus->phy.otg = FUNC8(&pdev->dev, sizeof(struct usb_otg),
					  GFP_KERNEL);
	if (!gpio_vbus->phy.otg)
		return -ENOMEM;

	FUNC16(pdev, gpio_vbus);
	gpio_vbus->dev = &pdev->dev;
	gpio_vbus->phy.label = "gpio-vbus";
	gpio_vbus->phy.dev = gpio_vbus->dev;
	gpio_vbus->phy.set_power = gpio_vbus_set_power;
	gpio_vbus->phy.set_suspend = gpio_vbus_set_suspend;

	gpio_vbus->phy.otg->state = OTG_STATE_UNDEFINED;
	gpio_vbus->phy.otg->usb_phy = &gpio_vbus->phy;
	gpio_vbus->phy.otg->set_peripheral = gpio_vbus_set_peripheral;

	err = FUNC7(&pdev->dev, gpio, "vbus_detect");
	if (err) {
		FUNC4(&pdev->dev, "can't request vbus gpio %d, err: %d\n",
			gpio, err);
		return err;
	}
	FUNC11(gpio);

	res = FUNC15(pdev, IORESOURCE_IRQ, 0);
	if (res) {
		irq = res->start;
		irqflags = (res->flags & IRQF_TRIGGER_MASK) | IRQF_SHARED;
	} else {
		irq = FUNC14(gpio);
		irqflags = VBUS_IRQ_FLAGS;
	}

	gpio_vbus->irq = irq;

	/* if data line pullup is in use, initialize it to "not pulling up" */
	gpio = pdata->gpio_pullup;
	if (FUNC13(gpio)) {
		err = FUNC7(&pdev->dev, gpio, "udc_pullup");
		if (err) {
			FUNC4(&pdev->dev,
				"can't request pullup gpio %d, err: %d\n",
				gpio, err);
			return err;
		}
		FUNC12(gpio, pdata->gpio_pullup_inverted);
	}

	err = FUNC10(&pdev->dev, irq, gpio_vbus_irq, irqflags,
			       "vbus_detect", pdev);
	if (err) {
		FUNC4(&pdev->dev, "can't request irq %i, err: %d\n",
			irq, err);
		return err;
	}

	FUNC0(&gpio_vbus->work, gpio_vbus_work);

	gpio_vbus->vbus_draw = FUNC9(&pdev->dev, "vbus_draw");
	if (FUNC1(gpio_vbus->vbus_draw)) {
		FUNC3(&pdev->dev, "can't get vbus_draw regulator, err: %ld\n",
			FUNC2(gpio_vbus->vbus_draw));
		gpio_vbus->vbus_draw = NULL;
	}

	/* only active when a gadget is registered */
	err = FUNC17(&gpio_vbus->phy, USB_PHY_TYPE_USB2);
	if (err) {
		FUNC4(&pdev->dev, "can't register transceiver, err: %d\n",
			err);
		return err;
	}

	FUNC6(&pdev->dev, pdata->wakeup);

	return 0;
}