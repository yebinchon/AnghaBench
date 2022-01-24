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
struct ls_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ls_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct ls_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct ls_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct ls_pcie*) ; 
 struct dw_pcie* FUNC7 (struct pcie_port*) ; 
 struct ls_pcie* FUNC8 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC9(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC7(pp);
	struct ls_pcie *pcie = FUNC8(pci);

	/*
	 * Disable outbound windows configured by the bootloader to avoid
	 * one transaction hitting multiple outbound windows.
	 * dw_pcie_setup_rc() will reconfigure the outbound windows.
	 */
	FUNC4(pcie);
	FUNC6(pcie);

	FUNC1(pci);
	FUNC3(pcie);
	FUNC0(pci);

	FUNC5(pcie);

	FUNC2(pp);

	return 0;
}