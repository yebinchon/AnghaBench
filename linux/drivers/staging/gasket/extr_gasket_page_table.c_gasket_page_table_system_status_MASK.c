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
struct gasket_page_table {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int GASKET_STATUS_ALIVE ; 
 int GASKET_STATUS_LAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct gasket_page_table*) ; 

int FUNC2(struct gasket_page_table *page_table)
{
	if (!page_table)
		return GASKET_STATUS_LAMED;

	if (FUNC1(page_table) == 0) {
		FUNC0(page_table->device, "Page table size is 0\n");
		return GASKET_STATUS_LAMED;
	}

	return GASKET_STATUS_ALIVE;
}