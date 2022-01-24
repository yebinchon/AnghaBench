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
struct pcie_link_state {scalar_t__ clkpm_capable; int /*<<< orphan*/  aspm_disable; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_STATE_L0S ; 
 int /*<<< orphan*/  ASPM_STATE_L1 ; 
 int EINVAL ; 
 int EPERM ; 
 int PCIE_LINK_STATE_CLKPM ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
 scalar_t__ aspm_disabled ; 
 int /*<<< orphan*/  aspm_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev, int state, bool sem)
{
	struct pci_dev *parent = pdev->bus->self;
	struct pcie_link_state *link;

	if (!FUNC3(pdev))
		return 0;

	if (FUNC6(pdev))
		parent = pdev;
	if (!parent || !parent->link_state)
		return -EINVAL;

	/*
	 * A driver requested that ASPM be disabled on this device, but
	 * if we don't have permission to manage ASPM (e.g., on ACPI
	 * systems we have to observe the FADT ACPI_FADT_NO_ASPM bit and
	 * the _OSC method), we can't honor that request.  Windows has
	 * a similar mechanism using "PciASPMOptOut", which is also
	 * ignored in this situation.
	 */
	if (aspm_disabled) {
		FUNC4(pdev, "can't disable ASPM; OS doesn't have ASPM control\n");
		return -EPERM;
	}

	if (sem)
		FUNC0(&pci_bus_sem);
	FUNC1(&aspm_lock);
	link = parent->link_state;
	if (state & PCIE_LINK_STATE_L0S)
		link->aspm_disable |= ASPM_STATE_L0S;
	if (state & PCIE_LINK_STATE_L1)
		link->aspm_disable |= ASPM_STATE_L1;
	FUNC5(link, FUNC8(link));

	if (state & PCIE_LINK_STATE_CLKPM) {
		link->clkpm_capable = 0;
		FUNC7(link, 0);
	}
	FUNC2(&aspm_lock);
	if (sem)
		FUNC9(&pci_bus_sem);

	return 0;
}