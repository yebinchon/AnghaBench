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
struct opp_table {int required_opp_count; struct opp_table** required_opp_tables; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table**) ; 

__attribute__((used)) static void FUNC3(struct opp_table *opp_table)
{
	struct opp_table **required_opp_tables = opp_table->required_opp_tables;
	int i;

	if (!required_opp_tables)
		return;

	for (i = 0; i < opp_table->required_opp_count; i++) {
		if (FUNC0(required_opp_tables[i]))
			break;

		FUNC1(required_opp_tables[i]);
	}

	FUNC2(required_opp_tables);

	opp_table->required_opp_count = 0;
	opp_table->required_opp_tables = NULL;
}