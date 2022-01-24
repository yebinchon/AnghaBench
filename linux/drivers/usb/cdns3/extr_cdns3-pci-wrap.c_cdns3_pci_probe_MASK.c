#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {char* name; void* flags; void* start; void* end; } ;
struct platform_device_info {scalar_t__ id; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  num_res; struct resource* res; int /*<<< orphan*/  name; int /*<<< orphan*/  fwnode; TYPE_1__* parent; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fwnode; } ;
struct pci_dev {scalar_t__ devfn; int /*<<< orphan*/  dma_mask; TYPE_1__ dev; void* irq; } ;
struct cdns3_wrap {scalar_t__ devfn; int /*<<< orphan*/  plat_dev; struct resource* dev_res; } ;
typedef  int /*<<< orphan*/  plat_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IORESOURCE_IRQ ; 
 void* IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_BAR_DEV ; 
 int /*<<< orphan*/  PCI_BAR_HOST ; 
 int /*<<< orphan*/  PCI_BAR_OTG ; 
 scalar_t__ PCI_DEV_FN_HOST_DEVICE ; 
 scalar_t__ PCI_DEV_FN_OTG ; 
 int /*<<< orphan*/  PLAT_DRIVER_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t RES_DEV_ID ; 
 size_t RES_DRD_ID ; 
 size_t RES_HOST_ID ; 
 size_t RES_IRQ_HOST_ID ; 
 size_t RES_IRQ_OTG_ID ; 
 size_t RES_IRQ_PERIPHERAL_ID ; 
 struct pci_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns3_wrap*) ; 
 struct cdns3_wrap* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct cdns3_wrap* FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 void* FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct cdns3_wrap*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device_info*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct pci_dev *pdev,
			   const struct pci_device_id *id)
{
	struct platform_device_info plat_info;
	struct cdns3_wrap *wrap;
	struct resource *res;
	struct pci_dev *func;
	int err;

	/*
	 * for GADGET/HOST PCI (devfn) function number is 0,
	 * for OTG PCI (devfn) function number is 1
	 */
	if (!id || (pdev->devfn != PCI_DEV_FN_HOST_DEVICE &&
		    pdev->devfn != PCI_DEV_FN_OTG))
		return -EINVAL;

	func = FUNC3(pdev);
	if (FUNC18(!func))
		return -EINVAL;

	err = FUNC16(pdev);
	if (err) {
		FUNC5(&pdev->dev, "Enabling PCI device has failed %d\n", err);
		return err;
	}

	FUNC15(pdev);

	if (FUNC11(func)) {
		wrap = FUNC10(func);
	} else {
		wrap = FUNC7(sizeof(*wrap), GFP_KERNEL);
		if (!wrap) {
			FUNC9(pdev);
			return -ENOMEM;
		}
	}

	res = wrap->dev_res;

	if (pdev->devfn == PCI_DEV_FN_HOST_DEVICE) {
		/* function 0: host(BAR_0) + device(BAR_1).*/
		FUNC4(&pdev->dev, "Initialize Device resources\n");
		res[RES_DEV_ID].start = FUNC13(pdev, PCI_BAR_DEV);
		res[RES_DEV_ID].end =   FUNC12(pdev, PCI_BAR_DEV);
		res[RES_DEV_ID].name = "dev";
		res[RES_DEV_ID].flags = IORESOURCE_MEM;
		FUNC4(&pdev->dev, "USBSS-DEV physical base addr: %pa\n",
			&res[RES_DEV_ID].start);

		res[RES_HOST_ID].start = FUNC13(pdev, PCI_BAR_HOST);
		res[RES_HOST_ID].end = FUNC12(pdev, PCI_BAR_HOST);
		res[RES_HOST_ID].name = "xhci";
		res[RES_HOST_ID].flags = IORESOURCE_MEM;
		FUNC4(&pdev->dev, "USBSS-XHCI physical base addr: %pa\n",
			&res[RES_HOST_ID].start);

		/* Interrupt for XHCI */
		wrap->dev_res[RES_IRQ_HOST_ID].start = pdev->irq;
		wrap->dev_res[RES_IRQ_HOST_ID].name = "host";
		wrap->dev_res[RES_IRQ_HOST_ID].flags = IORESOURCE_IRQ;

		/* Interrupt device. It's the same as for HOST. */
		wrap->dev_res[RES_IRQ_PERIPHERAL_ID].start = pdev->irq;
		wrap->dev_res[RES_IRQ_PERIPHERAL_ID].name = "peripheral";
		wrap->dev_res[RES_IRQ_PERIPHERAL_ID].flags = IORESOURCE_IRQ;
	} else {
		res[RES_DRD_ID].start = FUNC13(pdev, PCI_BAR_OTG);
		res[RES_DRD_ID].end =   FUNC12(pdev, PCI_BAR_OTG);
		res[RES_DRD_ID].name = "otg";
		res[RES_DRD_ID].flags = IORESOURCE_MEM;
		FUNC4(&pdev->dev, "USBSS-DRD physical base addr: %pa\n",
			&res[RES_DRD_ID].start);

		/* Interrupt for OTG/DRD. */
		wrap->dev_res[RES_IRQ_OTG_ID].start = pdev->irq;
		wrap->dev_res[RES_IRQ_OTG_ID].name = "otg";
		wrap->dev_res[RES_IRQ_OTG_ID].flags = IORESOURCE_IRQ;
	}

	if (FUNC11(func)) {
		/* set up platform device info */
		FUNC8(&plat_info, 0, sizeof(plat_info));
		plat_info.parent = &pdev->dev;
		plat_info.fwnode = pdev->dev.fwnode;
		plat_info.name = PLAT_DRIVER_NAME;
		plat_info.id = pdev->devfn;
		wrap->devfn  = pdev->devfn;
		plat_info.res = wrap->dev_res;
		plat_info.num_res = FUNC0(wrap->dev_res);
		plat_info.dma_mask = pdev->dma_mask;
		/* register platform device */
		wrap->plat_dev = FUNC17(&plat_info);
		if (FUNC1(wrap->plat_dev)) {
			FUNC9(pdev);
			err = FUNC2(wrap->plat_dev);
			FUNC6(wrap);
			return err;
		}
	}

	FUNC14(pdev, wrap);
	return err;
}