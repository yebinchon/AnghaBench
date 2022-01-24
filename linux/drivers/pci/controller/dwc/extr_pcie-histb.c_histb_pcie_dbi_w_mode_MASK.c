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
typedef  int /*<<< orphan*/  u32 ;
struct pcie_port {int dummy; } ;
struct histb_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_ELBI_SLV_DBI_ENABLE ; 
 int /*<<< orphan*/  PCIE_SYS_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (struct histb_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct histb_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw_pcie* FUNC2 (struct pcie_port*) ; 
 struct histb_pcie* FUNC3 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC4(struct pcie_port *pp, bool enable)
{
	struct dw_pcie *pci = FUNC2(pp);
	struct histb_pcie *hipcie = FUNC3(pci);
	u32 val;

	val = FUNC0(hipcie, PCIE_SYS_CTRL0);
	if (enable)
		val |= PCIE_ELBI_SLV_DBI_ENABLE;
	else
		val &= ~PCIE_ELBI_SLV_DBI_ENABLE;
	FUNC1(hipcie, PCIE_SYS_CTRL0, val);
}