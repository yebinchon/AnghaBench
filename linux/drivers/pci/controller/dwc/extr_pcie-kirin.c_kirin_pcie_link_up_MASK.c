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
typedef  int u32 ;
struct kirin_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_APB_PHY_STATUS0 ; 
 int PCIE_LINKUP_ENABLE ; 
 int FUNC0 (struct kirin_pcie*,int /*<<< orphan*/ ) ; 
 struct kirin_pcie* FUNC1 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC2(struct dw_pcie *pci)
{
	struct kirin_pcie *kirin_pcie = FUNC1(pci);
	u32 val = FUNC0(kirin_pcie, PCIE_APB_PHY_STATUS0);

	if ((val & PCIE_LINKUP_ENABLE) == PCIE_LINKUP_ENABLE)
		return 1;

	return 0;
}