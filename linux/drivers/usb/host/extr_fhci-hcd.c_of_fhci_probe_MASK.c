#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {struct device* controller; } ;
struct usb_hcd {TYPE_4__* regs; TYPE_1__ self; int /*<<< orphan*/  power_budget; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct fhci_hcd {int* gpios; int* alow_gpios; scalar_t__ fullspeed_clk; scalar_t__ lowspeed_clk; TYPE_2__** pins; TYPE_2__* timer; TYPE_4__* regs; int /*<<< orphan*/  pram; } ;
struct device_node {int dummy; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
struct TYPE_12__ {int /*<<< orphan*/  usb_usbmr; int /*<<< orphan*/  usb_usber; } ;
struct TYPE_11__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FHCI_PORT_FULL ; 
 int /*<<< orphan*/  FHCI_PORT_LOW ; 
 int /*<<< orphan*/  FHCI_PORT_POWER_OFF ; 
 int /*<<< orphan*/  FHCI_PRAM_SIZE ; 
 int GPIO_SPEED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned int NO_IRQ ; 
 int NUM_GPIOS ; 
 int NUM_PINS ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  QE_ASSIGN_PAGE_TO_DEVICE ; 
 scalar_t__ QE_CLK_DUMMY ; 
 scalar_t__ QE_CLK_NONE ; 
 int /*<<< orphan*/  QE_CR_PROTOCOL_UNSPECIFIED ; 
 int /*<<< orphan*/  QE_CR_SUBBLOCK_USB ; 
 int USB_CLOCK ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct fhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  fhci_driver ; 
 int /*<<< orphan*/  fhci_frame_limit_timer_irq ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 struct fhci_hcd* FUNC20 (struct usb_hcd*) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 unsigned int FUNC24 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC26 (struct device_node*,int,int*) ; 
 void* FUNC27 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 void* FUNC29 (char const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 TYPE_2__* FUNC32 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int) ; 
 int FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC35 (struct resource*) ; 
 scalar_t__ FUNC36 (char const*,char*) ; 
 int FUNC37 (struct usb_hcd*,unsigned int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC38 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC41(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct device_node *node = dev->of_node;
	struct usb_hcd *hcd;
	struct fhci_hcd *fhci;
	struct resource usb_regs;
	unsigned long pram_addr;
	unsigned int usb_irq;
	const char *sprop;
	const u32 *iprop;
	int size;
	int ret;
	int i;
	int j;

	if (FUNC39())
		return -ENODEV;

	sprop = FUNC27(node, "mode", NULL);
	if (sprop && FUNC36(sprop, "host"))
		return -ENODEV;

	hcd = FUNC38(&fhci_driver, dev, FUNC8(dev));
	if (!hcd) {
		FUNC6(dev, "could not create hcd\n");
		return -ENOMEM;
	}

	fhci = FUNC20(hcd);
	hcd->self.controller = dev;
	FUNC9(dev, hcd);

	iprop = FUNC27(node, "hub-power-budget", &size);
	if (iprop && size == sizeof(*iprop))
		hcd->power_budget = *iprop;

	/* FHCI registers. */
	ret = FUNC25(node, 0, &usb_regs);
	if (ret) {
		FUNC6(dev, "could not get regs\n");
		goto err_regs;
	}

	hcd->regs = FUNC21(usb_regs.start, FUNC35(&usb_regs));
	if (!hcd->regs) {
		FUNC6(dev, "could not ioremap regs\n");
		ret = -ENOMEM;
		goto err_regs;
	}
	fhci->regs = hcd->regs;

	/* Parameter RAM. */
	iprop = FUNC27(node, "reg", &size);
	if (!iprop || size < sizeof(*iprop) * 4) {
		FUNC6(dev, "can't get pram offset\n");
		ret = -EINVAL;
		goto err_pram;
	}

	pram_addr = FUNC4(FHCI_PRAM_SIZE, 64);
	if (FUNC1(pram_addr)) {
		FUNC6(dev, "failed to allocate usb pram\n");
		ret = -ENOMEM;
		goto err_pram;
	}

	FUNC30(QE_ASSIGN_PAGE_TO_DEVICE, QE_CR_SUBBLOCK_USB,
		     QE_CR_PROTOCOL_UNSPECIFIED, pram_addr);
	fhci->pram = FUNC3(pram_addr);

	/* GPIOs and pins */
	for (i = 0; i < NUM_GPIOS; i++) {
		int gpio;
		enum of_gpio_flags flags;

		gpio = FUNC26(node, i, &flags);
		fhci->gpios[i] = gpio;
		fhci->alow_gpios[i] = flags & OF_GPIO_ACTIVE_LOW;

		if (!FUNC16(gpio)) {
			if (i < GPIO_SPEED) {
				FUNC6(dev, "incorrect GPIO%d: %d\n",
					i, gpio);
				goto err_gpios;
			} else {
				FUNC7(dev, "assuming board doesn't have "
					"%s gpio\n", i == GPIO_SPEED ?
					"speed" : "power");
				continue;
			}
		}

		ret = FUNC17(gpio, FUNC8(dev));
		if (ret) {
			FUNC6(dev, "failed to request gpio %d", i);
			goto err_gpios;
		}

		if (i >= GPIO_SPEED) {
			ret = FUNC14(gpio, 0);
			if (ret) {
				FUNC6(dev, "failed to set gpio %d as "
					"an output\n", i);
				i++;
				goto err_gpios;
			}
		}
	}

	for (j = 0; j < NUM_PINS; j++) {
		fhci->pins[j] = FUNC32(node, j);
		if (FUNC0(fhci->pins[j])) {
			ret = FUNC2(fhci->pins[j]);
			FUNC6(dev, "can't get pin %d: %d\n", j, ret);
			goto err_pins;
		}
	}

	/* Frame limit timer and its interrupt. */
	fhci->timer = FUNC18();
	if (FUNC0(fhci->timer)) {
		ret = FUNC2(fhci->timer);
		FUNC6(dev, "failed to request qe timer: %i", ret);
		goto err_get_timer;
	}

	ret = FUNC34(fhci->timer->irq, fhci_frame_limit_timer_irq,
			  0, "qe timer (usb)", hcd);
	if (ret) {
		FUNC6(dev, "failed to request timer irq");
		goto err_timer_irq;
	}

	/* USB Host interrupt. */
	usb_irq = FUNC24(node, 0);
	if (usb_irq == NO_IRQ) {
		FUNC6(dev, "could not get usb irq\n");
		ret = -EINVAL;
		goto err_usb_irq;
	}

	/* Clocks. */
	sprop = FUNC27(node, "fsl,fullspeed-clock", NULL);
	if (sprop) {
		fhci->fullspeed_clk = FUNC29(sprop);
		if (fhci->fullspeed_clk == QE_CLK_DUMMY) {
			FUNC6(dev, "wrong fullspeed-clock\n");
			ret = -EINVAL;
			goto err_clocks;
		}
	}

	sprop = FUNC27(node, "fsl,lowspeed-clock", NULL);
	if (sprop) {
		fhci->lowspeed_clk = FUNC29(sprop);
		if (fhci->lowspeed_clk == QE_CLK_DUMMY) {
			FUNC6(dev, "wrong lowspeed-clock\n");
			ret = -EINVAL;
			goto err_clocks;
		}
	}

	if (fhci->fullspeed_clk == QE_CLK_NONE &&
			fhci->lowspeed_clk == QE_CLK_NONE) {
		FUNC6(dev, "no clocks specified\n");
		ret = -EINVAL;
		goto err_clocks;
	}

	FUNC7(dev, "at 0x%p, irq %d\n", hcd->regs, usb_irq);

	FUNC11(fhci, FHCI_PORT_POWER_OFF);

	/* Start with full-speed, if possible. */
	if (fhci->fullspeed_clk != QE_CLK_NONE) {
		FUNC11(fhci, FHCI_PORT_FULL);
		FUNC33(fhci->fullspeed_clk, USB_CLOCK);
	} else {
		FUNC11(fhci, FHCI_PORT_LOW);
		FUNC33(fhci->lowspeed_clk, USB_CLOCK >> 3);
	}

	/* Clear and disable any pending interrupts. */
	FUNC28(&fhci->regs->usb_usber, 0xffff);
	FUNC28(&fhci->regs->usb_usbmr, 0);

	ret = FUNC37(hcd, usb_irq, 0);
	if (ret < 0)
		goto err_add_hcd;

	FUNC10(hcd->self.controller);

	FUNC12(fhci);

	return 0;

err_add_hcd:
err_clocks:
	FUNC23(usb_irq);
err_usb_irq:
	FUNC13(fhci->timer->irq, hcd);
err_timer_irq:
	FUNC19(fhci->timer);
err_get_timer:
err_pins:
	while (--j >= 0)
		FUNC31(fhci->pins[j]);
err_gpios:
	while (--i >= 0) {
		if (FUNC16(fhci->gpios[i]))
			FUNC15(fhci->gpios[i]);
	}
	FUNC5(pram_addr);
err_pram:
	FUNC22(hcd->regs);
err_regs:
	FUNC40(hcd);
	return ret;
}