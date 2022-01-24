#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
struct property_entry {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct dwc3_pci {TYPE_1__* dwc3; int /*<<< orphan*/  wakeup_work; struct pci_dev* pci; } ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_7__ {TYPE_6__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 struct dwc3_pci* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dwc3_pci*) ; 
 int /*<<< orphan*/  dwc3_pci_resume_work ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct dwc3_pci*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,struct property_entry*) ; 
 int FUNC16 (TYPE_1__*,struct resource*,int) ; 
 TYPE_1__* FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pci, const struct pci_device_id *id)
{
	struct property_entry *p = (struct property_entry *)id->driver_data;
	struct dwc3_pci		*dwc;
	struct resource		res[2];
	int			ret;
	struct device		*dev = &pci->dev;

	ret = FUNC13(pci);
	if (ret) {
		FUNC4(dev, "failed to enable pci device\n");
		return -ENODEV;
	}

	FUNC12(pci);

	dwc = FUNC6(dev, sizeof(*dwc), GFP_KERNEL);
	if (!dwc)
		return -ENOMEM;

	dwc->dwc3 = FUNC17("dwc3", PLATFORM_DEVID_AUTO);
	if (!dwc->dwc3)
		return -ENOMEM;

	FUNC8(res, 0x00, sizeof(struct resource) * FUNC2(res));

	res[0].start	= FUNC10(pci, 0);
	res[0].end	= FUNC9(pci, 0);
	res[0].name	= "dwc_usb3";
	res[0].flags	= IORESOURCE_MEM;

	res[1].start	= pci->irq;
	res[1].name	= "dwc_usb3";
	res[1].flags	= IORESOURCE_IRQ;

	ret = FUNC16(dwc->dwc3, res, FUNC2(res));
	if (ret) {
		FUNC4(dev, "couldn't add resources to dwc3 device\n");
		goto err;
	}

	dwc->pci = pci;
	dwc->dwc3->dev.parent = dev;
	FUNC1(&dwc->dwc3->dev, FUNC0(dev));

	ret = FUNC15(dwc->dwc3, p);
	if (ret < 0)
		goto err;

	ret = FUNC7(dwc);
	if (ret)
		goto err;

	ret = FUNC14(dwc->dwc3);
	if (ret) {
		FUNC4(dev, "failed to register dwc3 device\n");
		goto err;
	}

	FUNC5(dev, true);
	FUNC11(pci, dwc);
	FUNC19(dev);
#ifdef CONFIG_PM
	INIT_WORK(&dwc->wakeup_work, dwc3_pci_resume_work);
#endif

	return 0;
err:
	FUNC18(dwc->dwc3);
	return ret;
}