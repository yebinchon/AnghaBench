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
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_0 ; 
 int BAR_5 ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*,int) ; 
 struct dw_pcie* FUNC1 (struct dw_pcie_ep*) ; 

__attribute__((used)) static void FUNC2(struct dw_pcie_ep *ep)
{
	struct dw_pcie *pci = FUNC1(ep);
	enum pci_barno bar;

	for (bar = BAR_0; bar <= BAR_5; bar++)
		FUNC0(pci, bar);
}