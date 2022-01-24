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
struct opp_table {scalar_t__ supported_hw_count; int /*<<< orphan*/ * supported_hw; int /*<<< orphan*/  opp_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct opp_table *opp_table)
{
	/* Make sure there are no concurrent readers while updating opp_table */
	FUNC0(!FUNC3(&opp_table->opp_list));

	FUNC2(opp_table->supported_hw);
	opp_table->supported_hw = NULL;
	opp_table->supported_hw_count = 0;

	FUNC1(opp_table);
}