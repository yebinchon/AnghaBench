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
struct pci_dev {int dummy; } ;
struct controller {int power_fault_detected; int /*<<< orphan*/  requester; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  pending_events; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DISABLE_SLOT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_ATTN_IND_ON ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_OFF ; 
 int PCI_EXP_SLTSTA_ABP ; 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 int PCI_EXP_SLTSTA_PFD ; 
 int RERUN_ISR ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct controller*) ; 
 int /*<<< orphan*/  FUNC10 (struct controller*) ; 
 int /*<<< orphan*/  FUNC11 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct controller*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	struct controller *ctrl = (struct controller *)dev_id;
	struct pci_dev *pdev = FUNC2(ctrl);
	irqreturn_t ret;
	u32 events;

	FUNC7(pdev);

	/* rerun pciehp_isr() if the port was inaccessible on interrupt */
	if (FUNC0(~RERUN_ISR, &ctrl->pending_events) & RERUN_ISR) {
		ret = FUNC12(irq, dev_id);
		FUNC6(irq);
		if (ret != IRQ_WAKE_THREAD) {
			FUNC8(pdev);
			return ret;
		}
	}

	FUNC15(irq);
	events = FUNC1(&ctrl->pending_events, 0);
	if (!events) {
		FUNC8(pdev);
		return IRQ_NONE;
	}

	/* Check Attention Button Pressed */
	if (events & PCI_EXP_SLTSTA_ABP) {
		FUNC4(ctrl, "Slot(%s): Attention button pressed\n",
			  FUNC14(ctrl));
		FUNC9(ctrl);
	}

	/* Check Power Fault Detected */
	if ((events & PCI_EXP_SLTSTA_PFD) && !ctrl->power_fault_detected) {
		ctrl->power_fault_detected = 1;
		FUNC3(ctrl, "Slot(%s): Power fault\n", FUNC14(ctrl));
		FUNC13(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
				      PCI_EXP_SLTCTL_ATTN_IND_ON);
	}

	/*
	 * Disable requests have higher priority than Presence Detect Changed
	 * or Data Link Layer State Changed events.
	 */
	FUNC5(&ctrl->reset_lock);
	if (events & DISABLE_SLOT)
		FUNC10(ctrl);
	else if (events & (PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC))
		FUNC11(ctrl, events);
	FUNC16(&ctrl->reset_lock);

	FUNC8(pdev);
	FUNC17(&ctrl->requester);
	return IRQ_HANDLED;
}