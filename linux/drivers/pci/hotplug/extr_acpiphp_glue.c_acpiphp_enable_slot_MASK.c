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
struct acpiphp_slot {int flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int SLOT_ENABLED ; 
 int SLOT_IS_GOING_AWAY ; 
 int /*<<< orphan*/  FUNC0 (struct acpiphp_slot*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct acpiphp_slot *slot)
{
	FUNC1();

	if (slot->flags & SLOT_IS_GOING_AWAY) {
		FUNC2();
		return -ENODEV;
	}

	/* configure all functions */
	if (!(slot->flags & SLOT_ENABLED))
		FUNC0(slot, false);

	FUNC2();
	return 0;
}