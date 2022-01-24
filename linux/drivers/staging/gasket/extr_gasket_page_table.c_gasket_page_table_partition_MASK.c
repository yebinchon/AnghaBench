#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint ;
struct TYPE_4__ {void* total_entries; } ;
struct gasket_page_table {int /*<<< orphan*/  mutex; int /*<<< orphan*/  extended_offset_reg; TYPE_2__ config; void* num_extended_entries; void* num_simple_entries; int /*<<< orphan*/  device; TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ PTE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_page_table*) ; 
 int FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

int FUNC6(struct gasket_page_table *pg_tbl,
				uint num_simple_entries)
{
	int i, start;

	FUNC3(&pg_tbl->mutex);
	if (num_simple_entries > pg_tbl->config.total_entries) {
		FUNC4(&pg_tbl->mutex);
		return -EINVAL;
	}

	FUNC1(pg_tbl);

	start = FUNC2(pg_tbl->num_simple_entries, num_simple_entries);

	for (i = start; i < pg_tbl->config.total_entries; i++) {
		if (pg_tbl->entries[i].status != PTE_FREE) {
			FUNC0(pg_tbl->device, "entry %d is not free\n", i);
			FUNC4(&pg_tbl->mutex);
			return -EBUSY;
		}
	}

	pg_tbl->num_simple_entries = num_simple_entries;
	pg_tbl->num_extended_entries =
		pg_tbl->config.total_entries - num_simple_entries;
	FUNC5(num_simple_entries, pg_tbl->extended_offset_reg);

	FUNC4(&pg_tbl->mutex);
	return 0;
}