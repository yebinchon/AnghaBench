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
struct usb_hcd {int dummy; } ;
struct exynos_ohci_hcd {int /*<<< orphan*/ * phy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_NUMBER ; 
 struct usb_hcd* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct exynos_ohci_hcd* FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct usb_hcd *hcd = FUNC1(dev);
	struct exynos_ohci_hcd *exynos_ohci = FUNC3(hcd);
	int i;

	for (i = 0; i < PHY_NUMBER; i++)
		if (!FUNC0(exynos_ohci->phy[i]))
			FUNC2(exynos_ohci->phy[i]);
}