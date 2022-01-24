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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int irq; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct controller {int mmio_base; int mmio_size; int cap_offset; int creg; int slot_device_offset; int num_slots; int first_slot; int slot_num_inc; struct pci_dev* pci_dev; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/ * hpc_ops; int /*<<< orphan*/  queue; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  crit_sect; } ;

/* Variables and functions */
 int ARBITER_SERR_MASK ; 
 int BUTTON_PRESS_INTR_MASK ; 
 int COMMAND_INTR_MASK ; 
 int CON_PFAULT_INTR_MASK ; 
 int CON_PFAULT_SERR_MASK ; 
 int FIRST_DEV_NUM ; 
 int GLOBAL_INTR_MASK ; 
 int GLOBAL_SERR_MASK ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int ISO_PFAULT_INTR_MASK ; 
 int MRL_CHANGE_INTR_MASK ; 
 int MRL_CHANGE_SERR_MASK ; 
 int /*<<< orphan*/  MY_NAME ; 
 int /*<<< orphan*/  PCI_CAP_ID_SHPC ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_AMD_GOLAM_7450 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AMD ; 
 int PRSNT_CHANGE_INTR_MASK ; 
 int PSN ; 
 int /*<<< orphan*/  SERR_INTR_ENABLE ; 
 int SERR_INTR_RSVDZ_MASK ; 
 int /*<<< orphan*/  SLOT_CONFIG ; 
 int SLOT_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLOT_REG_RSVDZ_MASK ; 
 int UPDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_poll_timeout ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct controller*) ; 
 int /*<<< orphan*/  FUNC19 (struct controller*) ; 
 int FUNC20 (struct controller*,int,int*) ; 
 int /*<<< orphan*/  shpc_isr ; 
 int FUNC21 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  shpchp_hpc_ops ; 
 scalar_t__ shpchp_poll_mode ; 
 int /*<<< orphan*/  FUNC23 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC25(struct controller *ctrl, struct pci_dev *pdev)
{
	int rc = -1, num_slots = 0;
	u8 hp_slot;
	u32 shpc_base_offset;
	u32 tempdword, slot_reg, slot_config;
	u8 i;

	ctrl->pci_dev = pdev;  /* pci_dev of the P2P bridge */
	FUNC1(ctrl, "Hotplug Controller:\n");

	if (pdev->vendor == PCI_VENDOR_ID_AMD &&
	    pdev->device == PCI_DEVICE_ID_AMD_GOLAM_7450) {
		/* amd shpc driver doesn't use Base Offset; assume 0 */
		ctrl->mmio_base = FUNC13(pdev, 0);
		ctrl->mmio_size = FUNC12(pdev, 0);
	} else {
		ctrl->cap_offset = FUNC10(pdev, PCI_CAP_ID_SHPC);
		if (!ctrl->cap_offset) {
			FUNC2(ctrl, "Cannot find PCI capability\n");
			goto abort;
		}
		FUNC1(ctrl, " cap_offset = %x\n", ctrl->cap_offset);

		rc = FUNC20(ctrl, 0, &shpc_base_offset);
		if (rc) {
			FUNC2(ctrl, "Cannot read base_offset\n");
			goto abort;
		}

		rc = FUNC20(ctrl, 3, &tempdword);
		if (rc) {
			FUNC2(ctrl, "Cannot read slot config\n");
			goto abort;
		}
		num_slots = tempdword & SLOT_NUM;
		FUNC1(ctrl, " num_slots (indirect) %x\n", num_slots);

		for (i = 0; i < 9 + num_slots; i++) {
			rc = FUNC20(ctrl, i, &tempdword);
			if (rc) {
				FUNC2(ctrl, "Cannot read creg (index = %d)\n",
					 i);
				goto abort;
			}
			FUNC1(ctrl, " offset %d: value %x\n", i, tempdword);
		}

		ctrl->mmio_base =
			FUNC13(pdev, 0) + shpc_base_offset;
		ctrl->mmio_size = 0x24 + 0x4 * num_slots;
	}

	FUNC3(ctrl, "HPC vendor_id %x device_id %x ss_vid %x ss_did %x\n",
		  pdev->vendor, pdev->device, pdev->subsystem_vendor,
		  pdev->subsystem_device);

	rc = FUNC8(pdev);
	if (rc) {
		FUNC2(ctrl, "pci_enable_device failed\n");
		goto abort;
	}

	if (!FUNC17(ctrl->mmio_base, ctrl->mmio_size, MY_NAME)) {
		FUNC2(ctrl, "Cannot reserve MMIO region\n");
		rc = -1;
		goto abort;
	}

	ctrl->creg = FUNC5(ctrl->mmio_base, ctrl->mmio_size);
	if (!ctrl->creg) {
		FUNC2(ctrl, "Cannot remap MMIO region %lx @ %lx\n",
			 ctrl->mmio_size, ctrl->mmio_base);
		FUNC15(ctrl->mmio_base, ctrl->mmio_size);
		rc = -1;
		goto abort;
	}
	FUNC1(ctrl, "ctrl->creg %p\n", ctrl->creg);

	FUNC7(&ctrl->crit_sect);
	FUNC7(&ctrl->cmd_lock);

	/* Setup wait queue */
	FUNC4(&ctrl->queue);

	ctrl->hpc_ops = &shpchp_hpc_ops;

	/* Return PCI Controller Info */
	slot_config = FUNC21(ctrl, SLOT_CONFIG);
	ctrl->slot_device_offset = (slot_config & FIRST_DEV_NUM) >> 8;
	ctrl->num_slots = slot_config & SLOT_NUM;
	ctrl->first_slot = (slot_config & PSN) >> 16;
	ctrl->slot_num_inc = ((slot_config & UPDOWN) >> 29) ? 1 : -1;

	/* Mask Global Interrupt Mask & Command Complete Interrupt Mask */
	tempdword = FUNC21(ctrl, SERR_INTR_ENABLE);
	FUNC1(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);
	tempdword |= (GLOBAL_INTR_MASK  | GLOBAL_SERR_MASK |
		      COMMAND_INTR_MASK | ARBITER_SERR_MASK);
	tempdword &= ~SERR_INTR_RSVDZ_MASK;
	FUNC22(ctrl, SERR_INTR_ENABLE, tempdword);
	tempdword = FUNC21(ctrl, SERR_INTR_ENABLE);
	FUNC1(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);

	/* Mask the MRL sensor SERR Mask of individual slot in
	 * Slot SERR-INT Mask & clear all the existing event if any
	 */
	for (hp_slot = 0; hp_slot < ctrl->num_slots; hp_slot++) {
		slot_reg = FUNC21(ctrl, FUNC0(hp_slot));
		FUNC1(ctrl, "Default Logical Slot Register %d value %x\n",
			 hp_slot, slot_reg);
		slot_reg |= (PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			     BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			     CON_PFAULT_INTR_MASK   | MRL_CHANGE_SERR_MASK |
			     CON_PFAULT_SERR_MASK);
		slot_reg &= ~SLOT_REG_RSVDZ_MASK;
		FUNC22(ctrl, FUNC0(hp_slot), slot_reg);
	}

	if (shpchp_poll_mode) {
		/* Install interrupt polling timer. Start with 10 sec delay */
		FUNC24(&ctrl->poll_timer, int_poll_timeout, 0);
		FUNC23(ctrl, 10);
	} else {
		/* Installs the interrupt handler */
		rc = FUNC9(pdev);
		if (rc) {
			FUNC3(ctrl, "Can't get msi for the hotplug controller\n");
			FUNC3(ctrl, "Use INTx for the hotplug controller\n");
		} else {
			FUNC14(pdev);
		}

		rc = FUNC16(ctrl->pci_dev->irq, shpc_isr, IRQF_SHARED,
				 MY_NAME, (void *)ctrl);
		FUNC1(ctrl, "request_irq %d (returns %d)\n",
			 ctrl->pci_dev->irq, rc);
		if (rc) {
			FUNC2(ctrl, "Can't get irq %d for the hotplug controller\n",
				 ctrl->pci_dev->irq);
			goto abort_iounmap;
		}
	}
	FUNC1(ctrl, "HPC at %s irq=%x\n", FUNC11(pdev), pdev->irq);

	FUNC19(ctrl);
	FUNC18(ctrl);

	/*
	 * Unmask all event interrupts of all slots
	 */
	for (hp_slot = 0; hp_slot < ctrl->num_slots; hp_slot++) {
		slot_reg = FUNC21(ctrl, FUNC0(hp_slot));
		FUNC1(ctrl, "Default Logical Slot Register %d value %x\n",
			 hp_slot, slot_reg);
		slot_reg &= ~(PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			      BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			      CON_PFAULT_INTR_MASK | SLOT_REG_RSVDZ_MASK);
		FUNC22(ctrl, FUNC0(hp_slot), slot_reg);
	}
	if (!shpchp_poll_mode) {
		/* Unmask all general input interrupts and SERR */
		tempdword = FUNC21(ctrl, SERR_INTR_ENABLE);
		tempdword &= ~(GLOBAL_INTR_MASK | COMMAND_INTR_MASK |
			       SERR_INTR_RSVDZ_MASK);
		FUNC22(ctrl, SERR_INTR_ENABLE, tempdword);
		tempdword = FUNC21(ctrl, SERR_INTR_ENABLE);
		FUNC1(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);
	}

	return 0;

	/* We end up here for the many possible ways to fail this API.  */
abort_iounmap:
	FUNC6(ctrl->creg);
abort:
	return rc;
}