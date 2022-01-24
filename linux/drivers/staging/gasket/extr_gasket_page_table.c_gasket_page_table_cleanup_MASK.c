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
struct gasket_page_table {int /*<<< orphan*/  device; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gasket_page_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_page_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct gasket_page_table *pg_tbl)
{
	/* Deallocate free second-level tables. */
	FUNC0(pg_tbl);

	/* TODO: Check that all PTEs have been freed? */

	FUNC3(pg_tbl->entries);
	pg_tbl->entries = NULL;

	FUNC2(pg_tbl->device);
	FUNC1(pg_tbl);
}