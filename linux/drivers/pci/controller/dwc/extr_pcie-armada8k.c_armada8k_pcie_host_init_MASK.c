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
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct armada8k_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct armada8k_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*) ; 
 struct armada8k_pcie* FUNC2 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC4(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC3(pp);
	struct armada8k_pcie *pcie = FUNC2(pci);

	FUNC1(pp);
	FUNC0(pcie);

	return 0;
}