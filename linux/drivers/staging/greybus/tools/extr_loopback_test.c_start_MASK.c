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
struct loopback_test {int device_count; int /*<<< orphan*/  test_id; TYPE_1__* devices; } ;
struct TYPE_2__ {int /*<<< orphan*/  sysfs_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loopback_test*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct loopback_test *t)
{
	int i;

	/* the test starts by writing test_id to the type file. */
	for (i = 0; i < t->device_count; i++) {
		if (!FUNC0(t, i))
			continue;

		FUNC1(t->devices[i].sysfs_entry, "type", t->test_id);
	}

	return 0;
}