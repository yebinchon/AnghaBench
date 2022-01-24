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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct kirin_pcie {void* pcie_aclk; void* apb_sys_clk; void* apb_phy_clk; void* pcie_aux_clk; void* phy_ref_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 long FUNC1 (void*) ; 
 void* FUNC2 (struct device*,char*) ; 

__attribute__((used)) static long FUNC3(struct kirin_pcie *kirin_pcie,
			       struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;

	kirin_pcie->phy_ref_clk = FUNC2(dev, "pcie_phy_ref");
	if (FUNC0(kirin_pcie->phy_ref_clk))
		return FUNC1(kirin_pcie->phy_ref_clk);

	kirin_pcie->pcie_aux_clk = FUNC2(dev, "pcie_aux");
	if (FUNC0(kirin_pcie->pcie_aux_clk))
		return FUNC1(kirin_pcie->pcie_aux_clk);

	kirin_pcie->apb_phy_clk = FUNC2(dev, "pcie_apb_phy");
	if (FUNC0(kirin_pcie->apb_phy_clk))
		return FUNC1(kirin_pcie->apb_phy_clk);

	kirin_pcie->apb_sys_clk = FUNC2(dev, "pcie_apb_sys");
	if (FUNC0(kirin_pcie->apb_sys_clk))
		return FUNC1(kirin_pcie->apb_sys_clk);

	kirin_pcie->pcie_aclk = FUNC2(dev, "pcie_aclk");
	if (FUNC0(kirin_pcie->pcie_aclk))
		return FUNC1(kirin_pcie->pcie_aclk);

	return 0;
}