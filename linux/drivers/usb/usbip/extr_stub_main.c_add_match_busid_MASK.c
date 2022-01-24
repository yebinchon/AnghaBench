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
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  busid_lock; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSID_SIZE ; 
 int MAX_BUSID ; 
 scalar_t__ STUB_BUSID_ADDED ; 
 scalar_t__ STUB_BUSID_ALLOC ; 
 scalar_t__ STUB_BUSID_REMOV ; 
 TYPE_1__* busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *busid)
{
	int i;
	int ret = -1;

	FUNC1(&busid_table_lock);
	/* already registered? */
	if (FUNC0(busid) >= 0) {
		ret = 0;
		goto out;
	}

	for (i = 0; i < MAX_BUSID; i++) {
		FUNC1(&busid_table[i].busid_lock);
		if (!busid_table[i].name[0]) {
			FUNC3(busid_table[i].name, busid, BUSID_SIZE);
			if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
			    (busid_table[i].status != STUB_BUSID_REMOV))
				busid_table[i].status = STUB_BUSID_ADDED;
			ret = 0;
			FUNC2(&busid_table[i].busid_lock);
			break;
		}
		FUNC2(&busid_table[i].busid_lock);
	}

out:
	FUNC2(&busid_table_lock);

	return ret;
}