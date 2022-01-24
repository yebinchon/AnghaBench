#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct s3c2410_hcd_info {int dummy; } ;
struct platform_device {TYPE_2__* resource; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct s3c2410_hcd_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ohci_s3c2410_hc_driver ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct s3c2410_hcd_info*,int,int) ; 
 int FUNC11 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_clk ; 
 struct usb_hcd* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *dev)
{
	struct usb_hcd *hcd = NULL;
	struct s3c2410_hcd_info *info = FUNC3(&dev->dev);
	int retval;

	FUNC10(info, 1, 1);
	FUNC10(info, 2, 1);

	hcd = FUNC12(&ohci_s3c2410_hc_driver, &dev->dev, "s3c24xx");
	if (hcd == NULL)
		return -ENOMEM;

	hcd->rsrc_start = dev->resource[0].start;
	hcd->rsrc_len	= FUNC7(&dev->resource[0]);

	hcd->regs = FUNC6(&dev->dev, &dev->resource[0]);
	if (FUNC0(hcd->regs)) {
		retval = FUNC1(hcd->regs);
		goto err_put;
	}

	clk = FUNC5(&dev->dev, "usb-host");
	if (FUNC0(clk)) {
		FUNC2(&dev->dev, "cannot get usb-host clock\n");
		retval = FUNC1(clk);
		goto err_put;
	}

	usb_clk = FUNC5(&dev->dev, "usb-bus-host");
	if (FUNC0(usb_clk)) {
		FUNC2(&dev->dev, "cannot get usb-bus-host clock\n");
		retval = FUNC1(usb_clk);
		goto err_put;
	}

	FUNC8(dev, hcd);

	retval = FUNC11(hcd, dev->resource[1].start, 0);
	if (retval != 0)
		goto err_ioremap;

	FUNC4(hcd->self.controller);
	return 0;

 err_ioremap:
	FUNC9(dev);

 err_put:
	FUNC13(hcd);
	return retval;
}