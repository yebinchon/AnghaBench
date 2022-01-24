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
typedef  int ulong ;
struct gasket_page_table {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gasket_page_table*,int,int) ; 

bool FUNC2(struct gasket_page_table *pg_tbl,
				     ulong host_addr, ulong dev_addr,
				     ulong bytes)
{
	if (host_addr & (PAGE_SIZE - 1)) {
		FUNC0(pg_tbl->device,
			"host mapping address 0x%lx must be page aligned\n",
			host_addr);
		return true;
	}

	return FUNC1(pg_tbl, dev_addr, bytes);
}