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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int pcie_cap; int pcie_flags_reg; int pcie_mpss; int /*<<< orphan*/  saved_cap_space; int /*<<< orphan*/  cfg_size; } ;
struct TYPE_2__ {int cap_nr; int size; int /*<<< orphan*/ * data; scalar_t__ cap_extended; } ;
struct pci_cap_saved_state {int /*<<< orphan*/  next; TYPE_1__ cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int PCI_CAP_ID_EXP ; 
 int PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  PCI_CFG_SPACE_EXP_SIZE ; 
 int /*<<< orphan*/  PCI_CFG_SPACE_SIZE ; 
 int PCI_EXP_DEVCAP ; 
 int PCI_EXP_DEVCAP_PAYLOAD ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int PCI_EXP_FLAGS ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_RTCTL ; 
 int PCI_EXP_SAVE_REGS ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_cap_saved_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	int pos, i = 0;
	u8 next_cap;
	u16 reg16, *cap;
	struct pci_cap_saved_state *state;

	/* Bail if the hardware bug is fixed */
	if (pdev->pcie_cap || FUNC2(pdev, PCI_CAP_ID_EXP))
		return;

	/* Bail if MSI Capability Structure is not found for some reason */
	pos = FUNC2(pdev, PCI_CAP_ID_MSI);
	if (!pos)
		return;

	/*
	 * Bail if Next Capability pointer in the MSI Capability Structure
	 * is not the expected incorrect 0x00.
	 */
	FUNC4(pdev, pos + 1, &next_cap);
	if (next_cap)
		return;

	/*
	 * PCIe Capability Structure is expected to be at 0x50 and should
	 * terminate the list (Next Capability pointer is 0x00).  Verify
	 * Capability Id and Next Capability pointer is as expected.
	 * Open-code some of set_pcie_port_type() and pci_cfg_space_size_ext()
	 * to correctly set kernel data structures which have already been
	 * set incorrectly due to the hardware bug.
	 */
	pos = 0x50;
	FUNC6(pdev, pos, &reg16);
	if (reg16 == (0x0000 | PCI_CAP_ID_EXP)) {
		u32 status;
#ifndef PCI_EXP_SAVE_REGS
#define PCI_EXP_SAVE_REGS     7
#endif
		int size = PCI_EXP_SAVE_REGS * sizeof(u16);

		pdev->pcie_cap = pos;
		FUNC6(pdev, pos + PCI_EXP_FLAGS, &reg16);
		pdev->pcie_flags_reg = reg16;
		FUNC6(pdev, pos + PCI_EXP_DEVCAP, &reg16);
		pdev->pcie_mpss = reg16 & PCI_EXP_DEVCAP_PAYLOAD;

		pdev->cfg_size = PCI_CFG_SPACE_EXP_SIZE;
		if (FUNC5(pdev, PCI_CFG_SPACE_SIZE, &status) !=
		    PCIBIOS_SUCCESSFUL || (status == 0xffffffff))
			pdev->cfg_size = PCI_CFG_SPACE_SIZE;

		if (FUNC3(pdev, PCI_CAP_ID_EXP))
			return;

		/* Save PCIe cap */
		state = FUNC1(sizeof(*state) + size, GFP_KERNEL);
		if (!state)
			return;

		state->cap.cap_nr = PCI_CAP_ID_EXP;
		state->cap.cap_extended = 0;
		state->cap.size = size;
		cap = (u16 *)&state->cap.data[0];
		FUNC7(pdev, PCI_EXP_DEVCTL, &cap[i++]);
		FUNC7(pdev, PCI_EXP_LNKCTL, &cap[i++]);
		FUNC7(pdev, PCI_EXP_SLTCTL, &cap[i++]);
		FUNC7(pdev, PCI_EXP_RTCTL,  &cap[i++]);
		FUNC7(pdev, PCI_EXP_DEVCTL2, &cap[i++]);
		FUNC7(pdev, PCI_EXP_LNKCTL2, &cap[i++]);
		FUNC7(pdev, PCI_EXP_SLTCTL2, &cap[i++]);
		FUNC0(&state->next, &pdev->saved_cap_space);
	}
}