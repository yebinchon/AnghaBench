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
struct opp_table {int regulator_count; int /*<<< orphan*/ * regulators; int /*<<< orphan*/  opp_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct opp_table *opp_table)
{
	int i;

	if (!opp_table->regulators)
		goto put_opp_table;

	/* Make sure there are no concurrent readers while updating opp_table */
	FUNC0(!FUNC4(&opp_table->opp_list));

	for (i = opp_table->regulator_count - 1; i >= 0; i--)
		FUNC5(opp_table->regulators[i]);

	FUNC1(opp_table);

	FUNC3(opp_table->regulators);
	opp_table->regulators = NULL;
	opp_table->regulator_count = -1;

put_opp_table:
	FUNC2(opp_table);
}