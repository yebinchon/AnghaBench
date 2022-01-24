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
struct gasket_page_table {int num_extended_entries; int /*<<< orphan*/  num_simple_entries; } ;

/* Variables and functions */
 int GASKET_PAGES_PER_SUBTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct gasket_page_table*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_page_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_page_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gasket_page_table *pg_tbl)
{
	FUNC2(pg_tbl,
				  FUNC0(pg_tbl, 1, 0,
								   0),
				  pg_tbl->num_simple_entries);
	FUNC1(pg_tbl,
				    FUNC0(pg_tbl, 0,
								     0, 0),
				    pg_tbl->num_extended_entries *
				    GASKET_PAGES_PER_SUBTABLE);
}