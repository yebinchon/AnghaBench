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
struct opp_table {int /*<<< orphan*/  head; } ;
struct dev_pm_opp {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPP_EVENT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct opp_table*,struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pm_opp*) ; 

__attribute__((used)) static void FUNC5(struct dev_pm_opp *opp,
			      struct opp_table *opp_table)
{
	/*
	 * Notify the changes in the availability of the operable
	 * frequency/voltage list.
	 */
	FUNC1(&opp_table->head, OPP_EVENT_REMOVE, opp);
	FUNC0(opp_table, opp);
	FUNC4(opp);
	FUNC3(&opp->node);
	FUNC2(opp);
}