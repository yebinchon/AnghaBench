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
typedef  int /*<<< orphan*/  ulong ;
typedef  scalar_t__ uint ;
struct gasket_page_table {int /*<<< orphan*/  device; scalar_t__ base_slot; scalar_t__ entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct gasket_page_table*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_page_table*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct gasket_page_table*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct gasket_page_table*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gasket_page_table *pg_tbl,
				   ulong host_addr, ulong dev_addr,
				   uint num_pages)
{
	int ret;
	uint slot_idx = FUNC4(pg_tbl, dev_addr);

	ret = FUNC1(pg_tbl, dev_addr, num_pages);
	if (ret) {
		FUNC0(pg_tbl->device,
			"page table slots %u (@ 0x%lx) to %u are not available\n",
			slot_idx, dev_addr, slot_idx + num_pages - 1);
		return ret;
	}

	ret = FUNC3(pg_tbl, pg_tbl->entries + slot_idx,
				     pg_tbl->base_slot + slot_idx, host_addr,
				     num_pages, 1);

	if (ret) {
		FUNC2(pg_tbl, dev_addr, num_pages);
		FUNC0(pg_tbl->device, "gasket_perform_mapping %d\n", ret);
	}
	return ret;
}