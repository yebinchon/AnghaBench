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
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  busid_lock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSID_SIZE ; 
 scalar_t__ STUB_BUSID_ADDED ; 
 scalar_t__ STUB_BUSID_OTHER ; 
 scalar_t__ STUB_BUSID_REMOV ; 
 TYPE_1__* busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(char *busid)
{
	int idx;
	int ret = -1;

	FUNC2(&busid_table_lock);
	idx = FUNC0(busid);
	if (idx < 0)
		goto out;

	/* found */
	ret = 0;

	FUNC2(&busid_table[idx].busid_lock);

	if (busid_table[idx].status == STUB_BUSID_OTHER)
		FUNC1(busid_table[idx].name, 0, BUSID_SIZE);

	if ((busid_table[idx].status != STUB_BUSID_OTHER) &&
	    (busid_table[idx].status != STUB_BUSID_ADDED))
		busid_table[idx].status = STUB_BUSID_REMOV;

	FUNC3(&busid_table[idx].busid_lock);
out:
	FUNC3(&busid_table_lock);

	return ret;
}