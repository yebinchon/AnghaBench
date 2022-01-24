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
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; TYPE_1__ self; int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct sa1111_dev {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; TYPE_2__ res; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  ohci_sa1111_hc_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct sa1111_dev*,int) ; 
 int FUNC6 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sa1111_dev*) ; 
 int FUNC8 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC12(struct sa1111_dev *dev)
{
	struct usb_hcd *hcd;
	int ret, irq;

	if (FUNC10())
		return -ENODEV;

	/*
	 * We don't call dma_set_mask_and_coherent() here because the
	 * DMA mask has already been appropraitely setup by the core
	 * SA-1111 bus code (which includes bug workarounds.)
	 */

	hcd = FUNC9(&ohci_sa1111_hc_driver, &dev->dev, "sa1111");
	if (!hcd)
		return -ENOMEM;

	hcd->rsrc_start = dev->res.start;
	hcd->rsrc_len = FUNC4(&dev->res);

	irq = FUNC5(dev, 1);
	if (irq <= 0) {
		ret = irq ? : -ENXIO;
		goto err1;
	}

	if (!FUNC3(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC0(&dev->dev, "request_mem_region failed\n");
		ret = -EBUSY;
		goto err1;
	}

	hcd->regs = dev->mapbase;

	ret = FUNC6(dev);
	if (ret)
		goto err2;

	ret = FUNC8(hcd, irq, 0);
	if (ret == 0) {
		FUNC1(hcd->self.controller);
		return ret;
	}

	FUNC7(dev);
 err2:
	FUNC2(hcd->rsrc_start, hcd->rsrc_len);
 err1:
	FUNC11(hcd);
	return ret;
}