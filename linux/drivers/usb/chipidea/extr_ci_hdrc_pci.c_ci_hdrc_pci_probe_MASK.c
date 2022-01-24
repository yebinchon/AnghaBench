#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  flags; scalar_t__ start; int /*<<< orphan*/  end; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct ci_hdrc_platform_data {int dummy; } ;
struct ci_hdrc_pci {int /*<<< orphan*/  ci; int /*<<< orphan*/  phy; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*,int,struct ci_hdrc_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct ci_hdrc_pci* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct ci_hdrc_pci*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev,
				       const struct pci_device_id *id)
{
	struct ci_hdrc_platform_data *platdata = (void *)id->driver_data;
	struct ci_hdrc_pci *ci;
	struct resource res[3];
	int retval = 0, nres = 2;

	if (!platdata) {
		FUNC3(&pdev->dev, "device doesn't provide driver data\n");
		return -ENODEV;
	}

	ci = FUNC4(&pdev->dev, sizeof(*ci), GFP_KERNEL);
	if (!ci)
		return -ENOMEM;

	retval = FUNC11(pdev);
	if (retval)
		return retval;

	if (!pdev->irq) {
		FUNC3(&pdev->dev, "No IRQ, check BIOS/PCI setup!");
		return -ENODEV;
	}

	FUNC9(pdev);
	FUNC10(pdev);

	/* register a nop PHY */
	ci->phy = FUNC12();
	if (FUNC0(ci->phy))
		return FUNC1(ci->phy);

	FUNC5(res, 0, sizeof(res));
	res[0].start	= FUNC7(pdev, 0);
	res[0].end	= FUNC6(pdev, 0);
	res[0].flags	= IORESOURCE_MEM;
	res[1].start	= pdev->irq;
	res[1].flags	= IORESOURCE_IRQ;

	ci->ci = FUNC2(&pdev->dev, res, nres, platdata);
	if (FUNC0(ci->ci)) {
		FUNC3(&pdev->dev, "ci_hdrc_add_device failed!\n");
		FUNC13(ci->phy);
		return FUNC1(ci->ci);
	}

	FUNC8(pdev, ci);

	return 0;
}