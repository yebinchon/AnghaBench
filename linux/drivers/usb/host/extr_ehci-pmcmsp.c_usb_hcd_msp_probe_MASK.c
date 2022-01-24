#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; TYPE_1__ self; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;
struct ehci_hcd {int big_endian_mmio; int big_endian_desc; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int FUNC11 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC12 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 

int FUNC16(const struct hc_driver *driver,
			  struct platform_device *dev)
{
	int retval;
	struct usb_hcd *hcd;
	struct resource *res;
	struct ehci_hcd		*ehci ;

	hcd = FUNC12(driver, &dev->dev, "pmcmsp");
	if (!hcd)
		return -ENOMEM;

	res = FUNC5(dev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC6("No IOMEM resource info for %s.\n", dev->name);
		retval = -ENOMEM;
		goto err1;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC9(res);
	if (!FUNC8(hcd->rsrc_start, hcd->rsrc_len, dev->name)) {
		retval = -EBUSY;
		goto err1;
	}
	hcd->regs = FUNC3(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC6("ioremap failed");
		retval = -ENOMEM;
		goto err2;
	}

	res = FUNC5(dev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC0(&dev->dev, "No IRQ resource info for %s.\n", dev->name);
		retval = -ENOMEM;
		goto err3;
	}

	/* Map non-EHCI register spaces */
	retval = FUNC13(FUNC10(dev));
	if (retval != 0)
		goto err3;

	ehci = FUNC2(hcd);
	ehci->big_endian_mmio = 1;
	ehci->big_endian_desc = 1;


	retval = FUNC11(hcd, res->start, IRQF_SHARED);
	if (retval == 0) {
		FUNC1(hcd->self.controller);
		return 0;
	}

	FUNC15(hcd);
err3:
	FUNC4(hcd->regs);
err2:
	FUNC7(hcd->rsrc_start, hcd->rsrc_len);
err1:
	FUNC14(hcd);

	return retval;
}