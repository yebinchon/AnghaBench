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
struct gasket_page_table {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gasket_page_table*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gasket_page_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gasket_page_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct gasket_page_table *pg_tbl, ulong host_addr,
			  ulong dev_addr, uint num_pages)
{
	int ret;

	if (!num_pages)
		return 0;

	FUNC3(&pg_tbl->mutex);

	if (FUNC0(pg_tbl, dev_addr)) {
		ret = FUNC2(pg_tbl, host_addr, dev_addr,
					      num_pages);
	} else {
		ret = FUNC1(pg_tbl, host_addr, dev_addr,
						num_pages);
	}

	FUNC4(&pg_tbl->mutex);
	return ret;
}