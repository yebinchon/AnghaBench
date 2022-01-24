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
struct TYPE_3__ {TYPE_2__* controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; void* regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ohci_hcd {int /*<<< orphan*/  hc_control; int /*<<< orphan*/  num_ports; } ;
struct ohci_at91_priv {int /*<<< orphan*/  sfr_regmap; void* hclk; void* fclk; void* iclk; } ;
struct hc_driver {int dummy; } ;
struct at91_usbh_data {int /*<<< orphan*/  ports; } ;
struct TYPE_4__ {struct at91_usbh_data* platform_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  OHCI_CTRL_RWC ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,struct resource*) ; 
 struct ohci_hcd* FUNC10 (struct usb_hcd*) ; 
 struct ohci_at91_priv* FUNC11 (struct usb_hcd*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int FUNC15 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC16 (struct hc_driver const*,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC18(const struct hc_driver *driver,
			struct platform_device *pdev)
{
	struct at91_usbh_data *board;
	struct ohci_hcd *ohci;
	int retval;
	struct usb_hcd *hcd;
	struct ohci_at91_priv *ohci_at91;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int irq;

	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		FUNC5(dev, "hcd probe: missing irq resource\n");
		return irq;
	}

	hcd = FUNC16(driver, dev, "at91");
	if (!hcd)
		return -ENOMEM;
	ohci_at91 = FUNC11(hcd);

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(dev, res);
	if (FUNC0(hcd->regs)) {
		retval = FUNC1(hcd->regs);
		goto err;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC14(res);

	ohci_at91->iclk = FUNC8(dev, "ohci_clk");
	if (FUNC0(ohci_at91->iclk)) {
		FUNC6(dev, "failed to get ohci_clk\n");
		retval = FUNC1(ohci_at91->iclk);
		goto err;
	}
	ohci_at91->fclk = FUNC8(dev, "uhpck");
	if (FUNC0(ohci_at91->fclk)) {
		FUNC6(dev, "failed to get uhpck\n");
		retval = FUNC1(ohci_at91->fclk);
		goto err;
	}
	ohci_at91->hclk = FUNC8(dev, "hclk");
	if (FUNC0(ohci_at91->hclk)) {
		FUNC6(dev, "failed to get hclk\n");
		retval = FUNC1(ohci_at91->hclk);
		goto err;
	}

	ohci_at91->sfr_regmap = FUNC2();
	if (!ohci_at91->sfr_regmap)
		FUNC5(dev, "failed to find sfr node\n");

	board = hcd->self.controller->platform_data;
	ohci = FUNC10(hcd);
	ohci->num_ports = board->ports;
	FUNC3(pdev);

	/*
	 * The RemoteWakeupConnected bit has to be set explicitly
	 * before calling ohci_run. The reset value of this bit is 0.
	 */
	ohci->hc_control = OHCI_CTRL_RWC;

	retval = FUNC15(hcd, irq, IRQF_SHARED);
	if (retval == 0) {
		FUNC7(hcd->self.controller);
		return retval;
	}

	/* Error handling */
	FUNC4(pdev);

 err:
	FUNC17(hcd);
	return retval;
}