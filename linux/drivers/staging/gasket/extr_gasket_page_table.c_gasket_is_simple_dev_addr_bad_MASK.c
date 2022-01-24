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
typedef  int ulong ;
typedef  int uint ;
struct TYPE_2__ {int total_entries; } ;
struct gasket_page_table {int num_simple_entries; int /*<<< orphan*/  device; TYPE_1__ config; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct gasket_page_table*,int,int,int) ; 

__attribute__((used)) static bool FUNC2(struct gasket_page_table *pg_tbl,
					  ulong dev_addr, uint num_pages)
{
	ulong page_offset = dev_addr & (PAGE_SIZE - 1);
	ulong page_index =
		(dev_addr / PAGE_SIZE) & (pg_tbl->config.total_entries - 1);

	if (FUNC1(pg_tbl, 1, page_index,
					     page_offset) != dev_addr) {
		FUNC0(pg_tbl->device, "address is invalid, 0x%lX\n",
			dev_addr);
		return true;
	}

	if (page_index >= pg_tbl->num_simple_entries) {
		FUNC0(pg_tbl->device,
			"starting slot at %lu is too large, max is < %u\n",
			page_index, pg_tbl->num_simple_entries);
		return true;
	}

	if (page_index + num_pages > pg_tbl->num_simple_entries) {
		FUNC0(pg_tbl->device,
			"ending slot at %lu is too large, max is <= %u\n",
			page_index + num_pages, pg_tbl->num_simple_entries);
		return true;
	}

	return false;
}