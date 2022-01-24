#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {int /*<<< orphan*/ * shared_hcd; } ;
struct TYPE_6__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; int /*<<< orphan*/  size; } ;
struct tegra_xusb {int /*<<< orphan*/  padctl; TYPE_1__ fw; int /*<<< orphan*/ * hcd; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBA ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct tegra_xusb* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct tegra_xusb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct tegra_xusb *tegra = FUNC3(pdev);
	struct xhci_hcd *xhci = FUNC1(tegra->hcd);

	FUNC10(xhci->shared_hcd);
	FUNC9(xhci->shared_hcd);
	xhci->shared_hcd = NULL;
	FUNC10(tegra->hcd);
	FUNC9(tegra->hcd);

	FUNC0(&pdev->dev, tegra->fw.size, tegra->fw.virt,
			  tegra->fw.phys);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	if (!FUNC2(pdev->dev.of_node, "power-domains")) {
		FUNC6(TEGRA_POWERGATE_XUSBC);
		FUNC6(TEGRA_POWERGATE_XUSBA);
	} else {
		FUNC8(&pdev->dev, tegra);
	}

	FUNC7(tegra->padctl);

	return 0;
}