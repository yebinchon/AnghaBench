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
struct opp_table {int required_opp_count; } ;
struct dev_pm_opp {struct dev_pm_opp** required_opps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_pm_opp**) ; 

void FUNC2(struct opp_table *opp_table,
				struct dev_pm_opp *opp)
{
	struct dev_pm_opp **required_opps = opp->required_opps;
	int i;

	if (!required_opps)
		return;

	for (i = 0; i < opp_table->required_opp_count; i++) {
		if (!required_opps[i])
			break;

		/* Put the reference back */
		FUNC0(required_opps[i]);
	}

	FUNC1(required_opps);
	opp->required_opps = NULL;
}