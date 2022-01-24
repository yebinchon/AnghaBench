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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {scalar_t__ broken_cmd_compl; scalar_t__ is_thunderbolt; scalar_t__ hotplug_user_indicators; struct pci_bus* subordinate; } ;
struct pci_bus {int /*<<< orphan*/  devices; } ;
struct controller {int slot_cap; int /*<<< orphan*/  state; int /*<<< orphan*/  button_work; int /*<<< orphan*/  queue; int /*<<< orphan*/  requester; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  ctrl_lock; struct pcie_device* pcie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OFF_STATE ; 
 int /*<<< orphan*/  ON_STATE ; 
 int /*<<< orphan*/  PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_DLLLARC ; 
 int /*<<< orphan*/  PCI_EXP_SLTCAP ; 
 int PCI_EXP_SLTCAP_ABP ; 
 int PCI_EXP_SLTCAP_AIP ; 
 int PCI_EXP_SLTCAP_EIP ; 
 int PCI_EXP_SLTCAP_HPC ; 
 int PCI_EXP_SLTCAP_HPS ; 
 int PCI_EXP_SLTCAP_MRLSP ; 
 int PCI_EXP_SLTCAP_NCCS ; 
 int PCI_EXP_SLTCAP_PCP ; 
 int PCI_EXP_SLTCAP_PIP ; 
 int PCI_EXP_SLTCAP_PSN ; 
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 int PCI_EXP_SLTSTA_ABP ; 
 int PCI_EXP_SLTSTA_CC ; 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_MRLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 int PCI_EXP_SLTSTA_PFD ; 
 scalar_t__ FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct controller* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct controller*) ; 
 int /*<<< orphan*/  FUNC14 (struct controller*) ; 
 int /*<<< orphan*/  FUNC15 (struct controller*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (struct controller*) ; 
 int /*<<< orphan*/  pciehp_queue_pushbutton_work ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

struct controller *FUNC18(struct pcie_device *dev)
{
	struct controller *ctrl;
	u32 slot_cap, link_cap;
	u8 poweron;
	struct pci_dev *pdev = dev->port;
	struct pci_bus *subordinate = pdev->subordinate;

	ctrl = FUNC8(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return NULL;

	ctrl->pcie = dev;
	FUNC11(pdev, PCI_EXP_SLTCAP, &slot_cap);

	if (pdev->hotplug_user_indicators)
		slot_cap &= ~(PCI_EXP_SLTCAP_AIP | PCI_EXP_SLTCAP_PIP);

	/*
	 * We assume no Thunderbolt controllers support Command Complete events,
	 * but some controllers falsely claim they do.
	 */
	if (pdev->is_thunderbolt)
		slot_cap |= PCI_EXP_SLTCAP_NCCS;

	ctrl->slot_cap = slot_cap;
	FUNC10(&ctrl->ctrl_lock);
	FUNC10(&ctrl->state_lock);
	FUNC6(&ctrl->reset_lock);
	FUNC7(&ctrl->requester);
	FUNC7(&ctrl->queue);
	FUNC1(&ctrl->button_work, pciehp_queue_pushbutton_work);
	FUNC4(ctrl);

	FUNC5(&pci_bus_sem);
	ctrl->state = FUNC9(&subordinate->devices) ? OFF_STATE : ON_STATE;
	FUNC17(&pci_bus_sem);

	/* Check if Data Link Layer Link Active Reporting is implemented */
	FUNC11(pdev, PCI_EXP_LNKCAP, &link_cap);

	/* Clear all remaining event bits in Slot Status register. */
	FUNC12(pdev, PCI_EXP_SLTSTA,
		PCI_EXP_SLTSTA_ABP | PCI_EXP_SLTSTA_PFD |
		PCI_EXP_SLTSTA_MRLSC | PCI_EXP_SLTSTA_CC |
		PCI_EXP_SLTSTA_DLLSC | PCI_EXP_SLTSTA_PDC);

	FUNC3(ctrl, "Slot #%d AttnBtn%c PwrCtrl%c MRL%c AttnInd%c PwrInd%c HotPlug%c Surprise%c Interlock%c NoCompl%c LLActRep%c%s\n",
		(slot_cap & PCI_EXP_SLTCAP_PSN) >> 19,
		FUNC0(slot_cap, PCI_EXP_SLTCAP_ABP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_PCP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_MRLSP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_AIP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_PIP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_HPC),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_HPS),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_EIP),
		FUNC0(slot_cap, PCI_EXP_SLTCAP_NCCS),
		FUNC0(link_cap, PCI_EXP_LNKCAP_DLLLARC),
		pdev->broken_cmd_compl ? " (with Cmd Compl erratum)" : "");

	/*
	 * If empty slot's power status is on, turn power off.  The IRQ isn't
	 * requested yet, so avoid triggering a notification with this command.
	 */
	if (FUNC2(ctrl)) {
		FUNC15(ctrl, &poweron);
		if (!FUNC14(ctrl) && poweron) {
			FUNC13(ctrl);
			FUNC16(ctrl);
		}
	}

	return ctrl;
}