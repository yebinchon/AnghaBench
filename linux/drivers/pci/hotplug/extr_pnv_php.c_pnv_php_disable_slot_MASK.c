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
struct pnv_php_slot {scalar_t__ state; int /*<<< orphan*/  dn; int /*<<< orphan*/  bus; } ;
struct hotplug_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_PCI_SLOT_POWER_OFF ; 
 scalar_t__ PNV_PHP_STATE_POPULATED ; 
 scalar_t__ PNV_PHP_STATE_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct hotplug_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pnv_php_slot* FUNC5 (struct hotplug_slot*) ; 

__attribute__((used)) static int FUNC6(struct hotplug_slot *slot)
{
	struct pnv_php_slot *php_slot = FUNC5(slot);
	int ret;

	if (php_slot->state != PNV_PHP_STATE_POPULATED)
		return 0;

	/* Remove all devices behind the slot */
	FUNC1();
	FUNC0(php_slot->bus);
	FUNC2();

	/* Detach the child hotpluggable slots */
	FUNC4(php_slot->dn);

	/* Notify firmware and remove device nodes */
	ret = FUNC3(slot, OPAL_PCI_SLOT_POWER_OFF);

	php_slot->state = PNV_PHP_STATE_REGISTERED;
	return ret;
}