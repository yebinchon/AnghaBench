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
struct opp_table {int /*<<< orphan*/  genpd_virt_dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct opp_table *opp_table)
{
	/*
	 * Acquire genpd_virt_dev_lock to make sure virt_dev isn't getting
	 * used in parallel.
	 */
	FUNC2(&opp_table->genpd_virt_dev_lock);
	FUNC0(opp_table);
	FUNC3(&opp_table->genpd_virt_dev_lock);

	FUNC1(opp_table);
}