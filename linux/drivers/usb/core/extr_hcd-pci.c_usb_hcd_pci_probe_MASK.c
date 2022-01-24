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
struct usb_hcd {int amd_resume_bug; TYPE_1__ self; void* rsrc_len; void* rsrc_start; int /*<<< orphan*/ * regs; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; scalar_t__ class; int /*<<< orphan*/  dev; } ;
struct hc_driver {int flags; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 scalar_t__ CL_EHCI ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HCD_MASK ; 
 int HCD_MEMORY ; 
 int HCD_USB11 ; 
 int HCD_USB3 ; 
 int IORESOURCE_IO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  companions_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_post_add ; 
 int /*<<< orphan*/  ehci_pre_add ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  non_ehci_add ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 scalar_t__ FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int) ; 
 void* FUNC15 (struct pci_dev*,int) ; 
 void* FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC22 (struct hc_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 () ; 
 scalar_t__ FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_hcd*) ; 

int FUNC26(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct hc_driver	*driver;
	struct usb_hcd		*hcd;
	int			retval;
	int			hcd_irq = 0;

	if (FUNC23())
		return -ENODEV;

	if (!id)
		return -EINVAL;
	driver = (struct hc_driver *)id->driver_data;
	if (!driver)
		return -EINVAL;

	if (FUNC12(dev) < 0)
		return -ENODEV;

	/*
	 * The xHCI driver has its own irq management
	 * make sure irq setup is not touched for xhci in generic hcd code
	 */
	if ((driver->flags & HCD_MASK) < HCD_USB3) {
		if (!dev->irq) {
			FUNC1(&dev->dev,
			"Found HC with no IRQ. Check BIOS/PCI %s setup!\n",
				FUNC13(dev));
			retval = -ENODEV;
			goto disable_pci;
		}
		hcd_irq = dev->irq;
	}

	hcd = FUNC22(driver, &dev->dev, FUNC13(dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto disable_pci;
	}

	hcd->amd_resume_bug = (FUNC24(dev) &&
			driver->flags & (HCD_USB11 | HCD_USB3)) ? 1 : 0;

	if (driver->flags & HCD_MEMORY) {
		/* EHCI, OHCI */
		hcd->rsrc_start = FUNC16(dev, 0);
		hcd->rsrc_len = FUNC15(dev, 0);
		if (!FUNC5(&dev->dev, hcd->rsrc_start,
				hcd->rsrc_len, driver->description)) {
			FUNC0(&dev->dev, "controller already in use\n");
			retval = -EBUSY;
			goto put_hcd;
		}
		hcd->regs = FUNC4(&dev->dev, hcd->rsrc_start,
				hcd->rsrc_len);
		if (hcd->regs == NULL) {
			FUNC0(&dev->dev, "error mapping memory\n");
			retval = -EFAULT;
			goto put_hcd;
		}

	} else {
		/* UHCI */
		int	region;

		for (region = 0; region < PCI_ROM_RESOURCE; region++) {
			if (!(FUNC14(dev, region) &
					IORESOURCE_IO))
				continue;

			hcd->rsrc_start = FUNC16(dev, region);
			hcd->rsrc_len = FUNC15(dev, region);
			if (FUNC6(&dev->dev, hcd->rsrc_start,
					hcd->rsrc_len, driver->description))
				break;
		}
		if (region == PCI_ROM_RESOURCE) {
			FUNC0(&dev->dev, "no i/o regions available\n");
			retval = -EBUSY;
			goto put_hcd;
		}
	}

	FUNC17(dev);

	/* Note: dev_set_drvdata must be called while holding the rwsem */
	if (dev->class == CL_EHCI) {
		FUNC8(&companions_rwsem);
		FUNC2(&dev->dev, hcd);
		FUNC9(dev, hcd, ehci_pre_add);
		retval = FUNC21(hcd, hcd_irq, IRQF_SHARED);
		if (retval != 0)
			FUNC2(&dev->dev, NULL);
		FUNC9(dev, hcd, ehci_post_add);
		FUNC20(&companions_rwsem);
	} else {
		FUNC7(&companions_rwsem);
		FUNC2(&dev->dev, hcd);
		retval = FUNC21(hcd, hcd_irq, IRQF_SHARED);
		if (retval != 0)
			FUNC2(&dev->dev, NULL);
		else
			FUNC9(dev, hcd, non_ehci_add);
		FUNC19(&companions_rwsem);
	}

	if (retval != 0)
		goto put_hcd;
	FUNC3(hcd->self.controller);

	if (FUNC10(dev))
		FUNC18(&dev->dev);
	return retval;

put_hcd:
	FUNC25(hcd);
disable_pci:
	FUNC11(dev);
	FUNC1(&dev->dev, "init %s fail, %d\n", FUNC13(dev), retval);
	return retval;
}