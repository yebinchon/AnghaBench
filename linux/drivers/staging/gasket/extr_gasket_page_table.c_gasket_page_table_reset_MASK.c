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
struct TYPE_2__ {int /*<<< orphan*/  total_entries; } ;
struct gasket_page_table {int /*<<< orphan*/  mutex; int /*<<< orphan*/  extended_offset_reg; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gasket_page_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct gasket_page_table *pg_tbl)
{
	FUNC1(&pg_tbl->mutex);
	FUNC0(pg_tbl);
	FUNC3(pg_tbl->config.total_entries, pg_tbl->extended_offset_reg);
	FUNC2(&pg_tbl->mutex);
}