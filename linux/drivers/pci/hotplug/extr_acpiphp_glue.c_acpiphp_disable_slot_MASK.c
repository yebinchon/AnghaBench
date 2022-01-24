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
struct acpiphp_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct acpiphp_slot*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct acpiphp_slot *slot)
{
	int ret;

	/*
	 * Acquire acpi_scan_lock to ensure that the execution of _EJ0 in
	 * acpiphp_disable_and_eject_slot() will be synchronized properly.
	 */
	FUNC0();
	FUNC3();
	ret = FUNC2(slot);
	FUNC4();
	FUNC1();
	return ret;
}