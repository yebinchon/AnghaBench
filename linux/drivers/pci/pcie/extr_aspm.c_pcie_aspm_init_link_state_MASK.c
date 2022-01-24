#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcie_link_state {int dummy; } ;
struct pci_dev {TYPE_2__* subordinate; TYPE_1__* bus; scalar_t__ link_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  devices; } ;
struct TYPE_3__ {scalar_t__ self; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 scalar_t__ POLICY_POWERSAVE ; 
 scalar_t__ POLICY_POWER_SUPERSAVE ; 
 struct pcie_link_state* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  aspm_lock ; 
 scalar_t__ aspm_policy ; 
 int /*<<< orphan*/  aspm_support_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcie_link_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcie_link_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct pci_dev *pdev)
{
	struct pcie_link_state *link;
	int blacklist = !!FUNC7(pdev);

	if (!aspm_support_enabled)
		return;

	if (pdev->link_state)
		return;

	/*
	 * We allocate pcie_link_state for the component on the upstream
	 * end of a Link, so there's nothing to do unless this device is
	 * downstream port.
	 */
	if (!FUNC10(pdev))
		return;

	/* VIA has a strange chipset, root port is under a bridge */
	if (FUNC5(pdev) == PCI_EXP_TYPE_ROOT_PORT &&
	    pdev->bus->self)
		return;

	FUNC1(&pci_bus_sem);
	if (FUNC2(&pdev->subordinate->devices))
		goto out;

	FUNC3(&aspm_lock);
	link = FUNC0(pdev);
	if (!link)
		goto unlock;
	/*
	 * Setup initial ASPM state. Note that we need to configure
	 * upstream links also because capable state of them can be
	 * update through pcie_aspm_cap_init().
	 */
	FUNC6(link, blacklist);

	/* Setup initial Clock PM state */
	FUNC8(link, blacklist);

	/*
	 * At this stage drivers haven't had an opportunity to change the
	 * link policy setting. Enabling ASPM on broken hardware can cripple
	 * it even before the driver has had a chance to disable ASPM, so
	 * default to a safe level right now. If we're enabling ASPM beyond
	 * the BIOS's expectation, we'll do so once pci_enable_device() is
	 * called.
	 */
	if (aspm_policy != POLICY_POWERSAVE &&
	    aspm_policy != POLICY_POWER_SUPERSAVE) {
		FUNC9(link);
		FUNC11(link, FUNC12(link));
	}

unlock:
	FUNC4(&aspm_lock);
out:
	FUNC13(&pci_bus_sem);
}