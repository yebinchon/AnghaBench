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
struct pci_bus {scalar_t__ number; } ;
struct iproc_pcie {scalar_t__ has_apb_err_disable; } ;

/* Variables and functions */
 int /*<<< orphan*/  APB_ERR_EN ; 
 int /*<<< orphan*/  IPROC_PCIE_APB_ERR_EN ; 
 struct iproc_pcie* FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iproc_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct pci_bus *bus,
					      bool disable)
{
	struct iproc_pcie *pcie = FUNC0(bus);
	u32 val;

	if (bus->number && pcie->has_apb_err_disable) {
		val = FUNC1(pcie, IPROC_PCIE_APB_ERR_EN);
		if (disable)
			val &= ~APB_ERR_EN;
		else
			val |= APB_ERR_EN;
		FUNC2(pcie, IPROC_PCIE_APB_ERR_EN, val);
	}
}