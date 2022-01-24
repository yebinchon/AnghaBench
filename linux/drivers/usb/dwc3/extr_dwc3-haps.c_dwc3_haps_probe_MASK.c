#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct dwc3_haps {TYPE_2__* dwc3; struct pci_dev* pci; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct dwc3_haps* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_properties ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct dwc3_haps*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,struct resource*,int) ; 
 TYPE_2__* FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pci,
			   const struct pci_device_id *id)
{
	struct dwc3_haps	*dwc;
	struct device		*dev = &pci->dev;
	struct resource		res[2];
	int			ret;

	ret = FUNC8(pci);
	if (ret) {
		FUNC1(dev, "failed to enable pci device\n");
		return -ENODEV;
	}

	FUNC7(pci);

	dwc = FUNC2(dev, sizeof(*dwc), GFP_KERNEL);
	if (!dwc)
		return -ENOMEM;

	dwc->dwc3 = FUNC12("dwc3", PLATFORM_DEVID_AUTO);
	if (!dwc->dwc3)
		return -ENOMEM;

	FUNC3(res, 0x00, sizeof(struct resource) * FUNC0(res));

	res[0].start	= FUNC5(pci, 0);
	res[0].end	= FUNC4(pci, 0);
	res[0].name	= "dwc_usb3";
	res[0].flags	= IORESOURCE_MEM;

	res[1].start	= pci->irq;
	res[1].name	= "dwc_usb3";
	res[1].flags	= IORESOURCE_IRQ;

	ret = FUNC11(dwc->dwc3, res, FUNC0(res));
	if (ret) {
		FUNC1(dev, "couldn't add resources to dwc3 device\n");
		goto err;
	}

	dwc->pci = pci;
	dwc->dwc3->dev.parent = dev;

	ret = FUNC10(dwc->dwc3, initial_properties);
	if (ret)
		goto err;

	ret = FUNC9(dwc->dwc3);
	if (ret) {
		FUNC1(dev, "failed to register dwc3 device\n");
		goto err;
	}

	FUNC6(pci, dwc);

	return 0;
err:
	FUNC13(dwc->dwc3);
	return ret;
}