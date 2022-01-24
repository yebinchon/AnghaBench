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
struct slot {int /*<<< orphan*/  hotplug_slot; } ;
struct acpiphp_slot {struct slot* slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*) ; 

void FUNC4(struct acpiphp_slot *acpiphp_slot)
{
	struct slot *slot = acpiphp_slot->slot;

	FUNC2("Slot [%s] unregistered\n", FUNC3(slot));

	FUNC1(&slot->hotplug_slot);
	FUNC0(slot);
}