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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC10(struct pci_dev *pdev, int *bars)
{
	int rv = -ENODEV;

	*bars = FUNC7(pdev, IORESOURCE_MEM);

	if (FUNC4(pdev))
		goto err;

	if (FUNC6(pdev, *bars, KBUILD_MODNAME))
		goto err_disable_device;

	FUNC8(pdev);
	FUNC9(pdev);

	rv = FUNC2(&pdev->dev, FUNC0(64));
	if (rv)
		rv = FUNC2(&pdev->dev, FUNC0(32));
	if (rv) {
		rv = -ENODEV;
		FUNC1(&pdev->dev, "No suitable DMA available.\n");
		goto err_release_regions;
	}

	return 0;

err_release_regions:
	FUNC5(pdev, *bars);
err_disable_device:
	FUNC3(pdev);
err:
	return rv;

}