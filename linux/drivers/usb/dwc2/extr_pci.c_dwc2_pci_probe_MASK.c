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
struct resource {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct dwc2_pci_glue {struct platform_device* dwc2; struct platform_device* phy; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct dwc2_pci_glue* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct dwc2_pci_glue*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct platform_device*) ; 
 int FUNC13 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*) ; 
 struct platform_device* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pci,
			  const struct pci_device_id *id)
{
	struct resource		res[2];
	struct platform_device	*dwc2;
	struct platform_device	*phy;
	int			ret;
	struct device		*dev = &pci->dev;
	struct dwc2_pci_glue	*glue;

	ret = FUNC11(pci);
	if (ret) {
		FUNC3(dev, "failed to enable pci device\n");
		return -ENODEV;
	}

	FUNC10(pci);

	phy = FUNC16();
	if (FUNC1(phy)) {
		FUNC3(dev, "error registering generic PHY (%ld)\n",
			FUNC2(phy));
		return FUNC2(phy);
	}

	dwc2 = FUNC14("dwc2", PLATFORM_DEVID_AUTO);
	if (!dwc2) {
		FUNC3(dev, "couldn't allocate dwc2 device\n");
		ret = -ENOMEM;
		goto err;
	}

	FUNC6(res, 0x00, sizeof(struct resource) * FUNC0(res));

	res[0].start	= FUNC8(pci, 0);
	res[0].end	= FUNC7(pci, 0);
	res[0].name	= "dwc2";
	res[0].flags	= IORESOURCE_MEM;

	res[1].start	= pci->irq;
	res[1].name	= "dwc2";
	res[1].flags	= IORESOURCE_IRQ;

	ret = FUNC13(dwc2, res, FUNC0(res));
	if (ret) {
		FUNC3(dev, "couldn't add resources to dwc2 device\n");
		goto err;
	}

	dwc2->dev.parent = dev;

	ret = FUNC5(pci, dwc2);
	if (ret)
		goto err;

	glue = FUNC4(dev, sizeof(*glue), GFP_KERNEL);
	if (!glue) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC12(dwc2);
	if (ret) {
		FUNC3(dev, "failed to register dwc2 device\n");
		goto err;
	}

	glue->phy = phy;
	glue->dwc2 = dwc2;
	FUNC9(pci, glue);

	return 0;
err:
	FUNC17(phy);
	FUNC15(dwc2);
	return ret;
}