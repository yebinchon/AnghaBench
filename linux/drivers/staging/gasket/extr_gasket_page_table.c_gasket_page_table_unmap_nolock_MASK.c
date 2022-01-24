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
typedef  int /*<<< orphan*/  uint ;
struct gasket_page_table {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gasket_page_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_page_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_page_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gasket_page_table *pg_tbl,
					   ulong dev_addr, uint num_pages)
{
	if (!num_pages)
		return;

	if (FUNC0(pg_tbl, dev_addr))
		FUNC2(pg_tbl, dev_addr, num_pages);
	else
		FUNC1(pg_tbl, dev_addr, num_pages);
}