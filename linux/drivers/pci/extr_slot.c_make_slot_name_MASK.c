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
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 struct kobject* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_slots_kset ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char *FUNC7(const char *name)
{
	char *new_name;
	int len, max, dup;

	new_name = FUNC4(name, GFP_KERNEL);
	if (!new_name)
		return NULL;

	/*
	 * Make sure we hit the realloc case the first time through the
	 * loop.  'len' will be strlen(name) + 3 at that point which is
	 * enough space for "name-X" and the trailing NUL.
	 */
	len = FUNC6(name) + 2;
	max = 1;
	dup = 1;

	for (;;) {
		struct kobject *dup_slot;
		dup_slot = FUNC3(pci_slots_kset, new_name);
		if (!dup_slot)
			break;
		FUNC2(dup_slot);
		if (dup == max) {
			len++;
			max *= 10;
			FUNC0(new_name);
			new_name = FUNC1(len, GFP_KERNEL);
			if (!new_name)
				break;
		}
		FUNC5(new_name, "%s-%d", name, dup++);
	}

	return new_name;
}