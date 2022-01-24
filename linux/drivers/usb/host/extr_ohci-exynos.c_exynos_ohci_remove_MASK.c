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
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct exynos_ohci_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 struct exynos_ohci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC2(pdev);
	struct exynos_ohci_hcd *exynos_ohci = FUNC3(hcd);

	pdev->dev.of_node = exynos_ohci->of_node;

	FUNC5(hcd);

	FUNC1(&pdev->dev);

	FUNC0(exynos_ohci->clk);

	FUNC4(hcd);

	return 0;
}