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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct pci_host_bridge {int dummy; } ;
struct mt7621_pcie {int /*<<< orphan*/  ports; struct device* dev; } ;
struct TYPE_4__ {unsigned long end; scalar_t__ start; } ;
struct TYPE_3__ {unsigned long end; scalar_t__ start; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct pci_host_bridge* FUNC3 (struct device*,int) ; 
 TYPE_2__ iomem_resource ; 
 TYPE_1__ ioport_resource ; 
 int FUNC4 (struct mt7621_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7621_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7621_pcie*) ; 
 int FUNC7 (struct mt7621_pcie*) ; 
 int FUNC8 (struct mt7621_pcie*) ; 
 int FUNC9 (struct pci_host_bridge*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mt7621_pcie*,int /*<<< orphan*/ *) ; 
 struct mt7621_pcie* FUNC11 (struct pci_host_bridge*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mt7621_pcie*) ; 
 int /*<<< orphan*/  res ; 
 int /*<<< orphan*/  FUNC13 (struct mt7621_pcie*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mt7621_pcie *pcie;
	struct pci_host_bridge *bridge;
	int err;
	FUNC1(res);

	if (!dev->of_node)
		return -ENODEV;

	bridge = FUNC3(dev, sizeof(*pcie));
	if (!bridge)
		return -ENOMEM;

	pcie = FUNC11(bridge);
	pcie->dev = dev;
	FUNC12(pdev, pcie);
	FUNC0(&pcie->ports);

	err = FUNC8(pcie);
	if (err) {
		FUNC2(dev, "Parsing DT failed\n");
		return err;
	}

	/* set resources limits */
	iomem_resource.start = 0;
	iomem_resource.end = ~0UL; /* no limit */
	ioport_resource.start = 0;
	ioport_resource.end = ~0UL; /* no limit */

	FUNC6(pcie);

	err = FUNC7(pcie);
	if (err) {
		FUNC2(dev, "Nothing is connected in virtual bridges. Exiting...");
		return 0;
	}

	FUNC5(pcie);

	err = FUNC4(pcie);
	if (err) {
		FUNC2(dev, "Error requesting pci resources from ranges");
		return err;
	}

	FUNC13(pcie);

	err = FUNC10(pcie, &res);
	if (err) {
		FUNC2(dev, "Error requesting resources\n");
		return err;
	}

	err = FUNC9(bridge, &res);
	if (err) {
		FUNC2(dev, "Error registering host\n");
		return err;
	}

	return 0;
}