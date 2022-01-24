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
struct usb_hcd {int /*<<< orphan*/  rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/ * regs; TYPE_2__ self; } ;
struct resource {scalar_t__ start; TYPE_1__* parent; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SM501_GATE_USB_HOST ; 
 int /*<<< orphan*/  SM501_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct hc_driver ohci_sm501_hc_driver ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC15 (struct hc_driver const*,struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct usb_hcd*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct hc_driver *driver = &ohci_sm501_hc_driver;
	struct device *dev = &pdev->dev;
	struct resource	*res, *mem;
	int retval, irq;
	struct usb_hcd *hcd = NULL;

	irq = retval = FUNC7(pdev, 0);
	if (retval < 0)
		goto err0;

	mem = FUNC8(pdev, IORESOURCE_MEM, 1);
	if (mem == NULL) {
		FUNC0(dev, "no resource definition for memory\n");
		retval = -ENOENT;
		goto err0;
	}

	if (!FUNC10(mem->start, FUNC11(mem), pdev->name)) {
		FUNC0(dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err0;
	}

	/* allocate, reserve and remap resources for registers */
	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(dev, "no resource definition for registers\n");
		retval = -ENOENT;
		goto err1;
	}

	hcd = FUNC15(driver, &pdev->dev, FUNC1(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto err1;
	}

	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC11(res);

	if (!FUNC10(hcd->rsrc_start, hcd->rsrc_len,	pdev->name)) {
		FUNC0(dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err3;
	}

	hcd->regs = FUNC4(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC0(dev, "cannot remap registers\n");
		retval = -ENXIO;
		goto err4;
	}

	FUNC6(FUNC3(hcd));

	/* The sm501 chip is equipped with local memory that may be used
	 * by on-chip devices such as the video controller and the usb host.
	 * This driver uses genalloc so that usb allocations with
	 * gen_pool_dma_alloc() allocate from this local memory. The dma_handle
	 * returned by gen_pool_dma_alloc() will be an offset starting from 0
	 * for the first local memory byte.
	 *
	 * So as long as data is allocated using gen_pool_dma_alloc() all is
	 * fine. This is however not always the case - buffers may be allocated
	 * using kmalloc() - so the usb core needs to be told that it must copy
	 * data into our local memory if the buffers happen to be placed in
	 * regular memory. A non-null hcd->localmem_pool initialized by the
	 * the call to usb_hcd_setup_local_mem() below does just that.
	 */

	if (FUNC16(hcd, mem->start,
				    mem->start - mem->parent->start,
				    FUNC11(mem)) < 0)
		goto err5;
	retval = FUNC14(hcd, irq, IRQF_SHARED);
	if (retval)
		goto err5;
	FUNC2(hcd->self.controller);

	/* enable power and unmask interrupts */

	FUNC13(dev->parent, SM501_GATE_USB_HOST, 1);
	FUNC12(dev->parent, SM501_IRQ_MASK, 1 << 6, 0);

	return 0;
err5:
	FUNC5(hcd->regs);
err4:
	FUNC9(hcd->rsrc_start, hcd->rsrc_len);
err3:
	FUNC17(hcd);
err1:
	FUNC9(mem->start, FUNC11(mem));
err0:
	return retval;
}