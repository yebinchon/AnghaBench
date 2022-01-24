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
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/  regs; TYPE_2__ self; } ;
struct platform_device {int num_resources; int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ IORESOURCE_IRQ ; 
 scalar_t__ IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ohci_omap_hc_driver ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_dc_ck ; 
 int /*<<< orphan*/  usb_host_ck ; 
 int /*<<< orphan*/  FUNC16 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	int retval, irq;
	struct usb_hcd *hcd = 0;

	if (pdev->num_resources != 2) {
		FUNC6(&pdev->dev, "invalid num_resources: %i\n",
		       pdev->num_resources);
		return -ENODEV;
	}

	if (pdev->resource[0].flags != IORESOURCE_MEM
			|| pdev->resource[1].flags != IORESOURCE_IRQ) {
		FUNC6(&pdev->dev, "invalid resource type\n");
		return -ENODEV;
	}

	usb_host_ck = FUNC2(&pdev->dev, "usb_hhc_ck");
	if (FUNC0(usb_host_ck))
		return FUNC1(usb_host_ck);

	if (!FUNC4())
		usb_dc_ck = FUNC2(&pdev->dev, "usb_dc_ck");
	else
		usb_dc_ck = FUNC2(&pdev->dev, "lb_ck");

	if (FUNC0(usb_dc_ck)) {
		FUNC3(usb_host_ck);
		return FUNC1(usb_dc_ck);
	}


	hcd = FUNC15(&ohci_omap_hc_driver, &pdev->dev,
			FUNC7(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto err0;
	}
	hcd->rsrc_start = pdev->resource[0].start;
	hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;

	if (!FUNC13(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC5(&pdev->dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err1;
	}

	hcd->regs = FUNC9(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC6(&pdev->dev, "can't ioremap OHCI HCD\n");
		retval = -ENOMEM;
		goto err2;
	}

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		retval = -ENXIO;
		goto err3;
	}
	retval = FUNC14(hcd, irq, 0);
	if (retval)
		goto err3;

	FUNC8(hcd->self.controller);
	return 0;
err3:
	FUNC10(hcd->regs);
err2:
	FUNC12(hcd->rsrc_start, hcd->rsrc_len);
err1:
	FUNC16(hcd);
err0:
	FUNC3(usb_dc_ck);
	FUNC3(usb_host_ck);
	return retval;
}