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
typedef  int u32 ;
struct controller {int num_slots; int /*<<< orphan*/  mmio_size; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  creg; TYPE_1__* pci_dev; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ARBITER_SERR_MASK ; 
 int BUTTON_PRESS_INTR_MASK ; 
 int COMMAND_INTR_MASK ; 
 int CON_PFAULT_INTR_MASK ; 
 int CON_PFAULT_SERR_MASK ; 
 int GLOBAL_INTR_MASK ; 
 int GLOBAL_SERR_MASK ; 
 int ISO_PFAULT_INTR_MASK ; 
 int MRL_CHANGE_INTR_MASK ; 
 int MRL_CHANGE_SERR_MASK ; 
 int PRSNT_CHANGE_INTR_MASK ; 
 int /*<<< orphan*/  SERR_INTR_ENABLE ; 
 int SERR_INTR_RSVDZ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLOT_REG_RSVDZ_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct controller*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ shpchp_poll_mode ; 

__attribute__((used)) static void FUNC9(struct controller *ctrl)
{
	int i;
	u32 slot_reg, serr_int;

	/*
	 * Mask event interrupts and SERRs of all slots
	 */
	for (i = 0; i < ctrl->num_slots; i++) {
		slot_reg = FUNC7(ctrl, FUNC0(i));
		slot_reg |= (PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			     BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			     CON_PFAULT_INTR_MASK   | MRL_CHANGE_SERR_MASK |
			     CON_PFAULT_SERR_MASK);
		slot_reg &= ~SLOT_REG_RSVDZ_MASK;
		FUNC8(ctrl, FUNC0(i), slot_reg);
	}

	FUNC1(ctrl);

	/*
	 * Mask SERR and System Interrupt generation
	 */
	serr_int = FUNC7(ctrl, SERR_INTR_ENABLE);
	serr_int |= (GLOBAL_INTR_MASK  | GLOBAL_SERR_MASK |
		     COMMAND_INTR_MASK | ARBITER_SERR_MASK);
	serr_int &= ~SERR_INTR_RSVDZ_MASK;
	FUNC8(ctrl, SERR_INTR_ENABLE, serr_int);

	if (shpchp_poll_mode)
		FUNC2(&ctrl->poll_timer);
	else {
		FUNC3(ctrl->pci_dev->irq, ctrl);
		FUNC5(ctrl->pci_dev);
	}

	FUNC4(ctrl->creg);
	FUNC6(ctrl->mmio_base, ctrl->mmio_size);
}