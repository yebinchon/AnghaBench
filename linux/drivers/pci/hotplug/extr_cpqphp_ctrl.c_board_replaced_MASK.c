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
struct pci_func {int device; int status; } ;
struct pci_bus {int cur_bus_speed; } ;
struct controller {int slot_device_offset; int /*<<< orphan*/  crit_sect; scalar_t__ hpc_reg; struct pci_bus* pci_bus; } ;

/* Variables and functions */
 int CARD_FUNCTIONING ; 
 int HZ ; 
 int INTERLOCK_OPEN ; 
 scalar_t__ INT_INPUT_CLEAR ; 
 int POWER_FAILURE ; 
 scalar_t__ SLOT_POWER ; 
 int WRONG_BUS_FREQUENCY ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,int) ; 
 int FUNC2 (struct controller*,struct pci_func*) ; 
 int FUNC3 (struct controller*,struct pci_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,int) ; 
 int FUNC6 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*,int) ; 
 scalar_t__ FUNC9 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct controller*) ; 
 scalar_t__ FUNC16 (struct controller*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct controller*) ; 
 int /*<<< orphan*/  FUNC20 (int,scalar_t__) ; 

__attribute__((used)) static u32 FUNC21(struct pci_func *func, struct controller *ctrl)
{
	struct pci_bus *bus = ctrl->pci_bus;
	u8 hp_slot;
	u8 temp_byte;
	u8 adapter_speed;
	u32 rc = 0;

	hp_slot = func->device - ctrl->slot_device_offset;

	/*
	 * The switch is open.
	 */
	if (FUNC14(ctrl->hpc_reg + INT_INPUT_CLEAR) & (0x01L << hp_slot))
		rc = INTERLOCK_OPEN;
	/*
	 * The board is already on
	 */
	else if (FUNC9(ctrl, hp_slot))
		rc = CARD_FUNCTIONING;
	else {
		FUNC11(&ctrl->crit_sect);

		/* turn on board without attaching to the bus */
		FUNC5(ctrl, hp_slot);

		FUNC15(ctrl);

		/* Wait for SOBS to be unset */
		FUNC19(ctrl);

		/* Change bits in slot power register to force another shift out
		 * NOTE: this is to work around the timer bug */
		temp_byte = FUNC13(ctrl->hpc_reg + SLOT_POWER);
		FUNC20(0x00, ctrl->hpc_reg + SLOT_POWER);
		FUNC20(temp_byte, ctrl->hpc_reg + SLOT_POWER);

		FUNC15(ctrl);

		/* Wait for SOBS to be unset */
		FUNC19(ctrl);

		adapter_speed = FUNC6(ctrl, hp_slot);
		if (bus->cur_bus_speed != adapter_speed)
			if (FUNC16(ctrl, adapter_speed, hp_slot))
				rc = WRONG_BUS_FREQUENCY;

		/* turn off board without attaching to the bus */
		FUNC4(ctrl, hp_slot);

		FUNC15(ctrl);

		/* Wait for SOBS to be unset */
		FUNC19(ctrl);

		FUNC12(&ctrl->crit_sect);

		if (rc)
			return rc;

		FUNC11(&ctrl->crit_sect);

		FUNC18(ctrl, hp_slot);
		FUNC7(ctrl, hp_slot);

		FUNC0(ctrl, hp_slot);

		FUNC15(ctrl);

		/* Wait for SOBS to be unset */
		FUNC19(ctrl);

		FUNC12(&ctrl->crit_sect);

		/* Wait for ~1 second because of hot plug spec */
		FUNC10(1*HZ);

		/* Check for a power fault */
		if (func->status == 0xFF) {
			/* power fault occurred, but it was benign */
			rc = POWER_FAILURE;
			func->status = 0;
		} else
			rc = FUNC3(ctrl, func);

		if (!rc) {
			/* It must be the same board */

			rc = FUNC2(ctrl, func);

			/* If configuration fails, turn it off
			 * Get slot won't work for devices behind
			 * bridges, but in this case it will always be
			 * called for the "base" bus/dev/func of an
			 * adapter.
			 */

			FUNC11(&ctrl->crit_sect);

			FUNC1(ctrl, hp_slot);
			FUNC8(ctrl, hp_slot);
			FUNC17(ctrl, hp_slot);

			FUNC15(ctrl);

			/* Wait for SOBS to be unset */
			FUNC19(ctrl);

			FUNC12(&ctrl->crit_sect);

			if (rc)
				return rc;
			else
				return 1;

		} else {
			/* Something is wrong

			 * Get slot won't work for devices behind bridges, but
			 * in this case it will always be called for the "base"
			 * bus/dev/func of an adapter.
			 */

			FUNC11(&ctrl->crit_sect);

			FUNC1(ctrl, hp_slot);
			FUNC8(ctrl, hp_slot);
			FUNC17(ctrl, hp_slot);

			FUNC15(ctrl);

			/* Wait for SOBS to be unset */
			FUNC19(ctrl);

			FUNC12(&ctrl->crit_sect);
		}

	}
	return rc;

}