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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct kirin_pcie {void* sysctrl; void* crgctrl; TYPE_1__* pci; void* phy_base; void* apb_base; } ;
struct TYPE_2__ {void* dbi_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 long FUNC1 (void*) ; 
 void* FUNC2 (struct device*,struct resource*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (char*) ; 

__attribute__((used)) static long FUNC5(struct kirin_pcie *kirin_pcie,
				    struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *apb;
	struct resource *phy;
	struct resource *dbi;

	apb = FUNC3(pdev, IORESOURCE_MEM, "apb");
	kirin_pcie->apb_base = FUNC2(dev, apb);
	if (FUNC0(kirin_pcie->apb_base))
		return FUNC1(kirin_pcie->apb_base);

	phy = FUNC3(pdev, IORESOURCE_MEM, "phy");
	kirin_pcie->phy_base = FUNC2(dev, phy);
	if (FUNC0(kirin_pcie->phy_base))
		return FUNC1(kirin_pcie->phy_base);

	dbi = FUNC3(pdev, IORESOURCE_MEM, "dbi");
	kirin_pcie->pci->dbi_base = FUNC2(dev, dbi);
	if (FUNC0(kirin_pcie->pci->dbi_base))
		return FUNC1(kirin_pcie->pci->dbi_base);

	kirin_pcie->crgctrl =
		FUNC4("hisilicon,hi3660-crgctrl");
	if (FUNC0(kirin_pcie->crgctrl))
		return FUNC1(kirin_pcie->crgctrl);

	kirin_pcie->sysctrl =
		FUNC4("hisilicon,hi3660-sctrl");
	if (FUNC0(kirin_pcie->sysctrl))
		return FUNC1(kirin_pcie->sysctrl);

	return 0;
}