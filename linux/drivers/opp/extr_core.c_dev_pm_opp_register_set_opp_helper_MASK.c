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
struct opp_table {int (* set_opp ) (struct dev_pm_set_opp_data*) ;int /*<<< orphan*/  opp_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct opp_table* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct opp_table* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct opp_table *FUNC5(struct device *dev,
			int (*set_opp)(struct dev_pm_set_opp_data *data))
{
	struct opp_table *opp_table;

	if (!set_opp)
		return FUNC0(-EINVAL);

	opp_table = FUNC2(dev);
	if (!opp_table)
		return FUNC0(-ENOMEM);

	/* This should be called before OPPs are initialized */
	if (FUNC1(!FUNC4(&opp_table->opp_list))) {
		FUNC3(opp_table);
		return FUNC0(-EBUSY);
	}

	/* Another CPU that shares the OPP table has set the helper ? */
	if (!opp_table->set_opp)
		opp_table->set_opp = set_opp;

	return opp_table;
}