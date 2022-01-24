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
typedef  scalar_t__ uint8_t ;
struct hotplug_slot {int dummy; } ;
struct pnv_php_slot {scalar_t__ state; int power_state_check; int /*<<< orphan*/  dn; int /*<<< orphan*/  bus; struct hotplug_slot slot; } ;

/* Variables and functions */
 scalar_t__ OPAL_PCI_SLOT_EMPTY ; 
 scalar_t__ OPAL_PCI_SLOT_POWER_ON ; 
 scalar_t__ OPAL_PCI_SLOT_PRESENT ; 
 void* PNV_PHP_STATE_POPULATED ; 
 scalar_t__ PNV_PHP_STATE_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct hotplug_slot*,scalar_t__*) ; 
 int FUNC4 (struct hotplug_slot*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hotplug_slot*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pnv_php_slot *php_slot, bool rescan)
{
	struct hotplug_slot *slot = &php_slot->slot;
	uint8_t presence = OPAL_PCI_SLOT_EMPTY;
	uint8_t power_status = OPAL_PCI_SLOT_POWER_ON;
	int ret;

	/* Check if the slot has been configured */
	if (php_slot->state != PNV_PHP_STATE_REGISTERED)
		return 0;

	/* Retrieve slot presence status */
	ret = FUNC3(slot, &presence);
	if (ret)
		return ret;

	/*
	 * Proceed if there have nothing behind the slot. However,
	 * we should leave the slot in registered state at the
	 * beginning. Otherwise, the PCI devices inserted afterwards
	 * won't be probed and populated.
	 */
	if (presence == OPAL_PCI_SLOT_EMPTY) {
		if (!php_slot->power_state_check) {
			php_slot->power_state_check = true;

			return 0;
		}

		goto scan;
	}

	/*
	 * If the power supply to the slot is off, we can't detect
	 * adapter presence state. That means we have to turn the
	 * slot on before going to probe slot's presence state.
	 *
	 * On the first time, we don't change the power status to
	 * boost system boot with assumption that the firmware
	 * supplies consistent slot power status: empty slot always
	 * has its power off and non-empty slot has its power on.
	 */
	if (!php_slot->power_state_check) {
		php_slot->power_state_check = true;

		ret = FUNC4(slot, &power_status);
		if (ret)
			return ret;

		if (power_status != OPAL_PCI_SLOT_POWER_ON)
			return 0;
	}

	/* Check the power status. Scan the slot if it is already on */
	ret = FUNC4(slot, &power_status);
	if (ret)
		return ret;

	if (power_status == OPAL_PCI_SLOT_POWER_ON)
		goto scan;

	/* Power is off, turn it on and then scan the slot */
	ret = FUNC6(slot, OPAL_PCI_SLOT_POWER_ON);
	if (ret)
		return ret;

scan:
	if (presence == OPAL_PCI_SLOT_PRESENT) {
		if (rescan) {
			FUNC1();
			FUNC0(php_slot->bus);
			FUNC2();
		}

		/* Rescan for child hotpluggable slots */
		php_slot->state = PNV_PHP_STATE_POPULATED;
		if (rescan)
			FUNC5(php_slot->dn);
	} else {
		php_slot->state = PNV_PHP_STATE_POPULATED;
	}

	return 0;
}