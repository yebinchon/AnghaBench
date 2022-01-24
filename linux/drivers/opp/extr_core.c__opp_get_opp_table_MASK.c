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
struct opp_table {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct opp_table*) ; 
 struct opp_table* FUNC2 (struct device*,int) ; 
 struct opp_table* FUNC3 (struct device*) ; 
 struct opp_table* FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opp_table_lock ; 

__attribute__((used)) static struct opp_table *FUNC8(struct device *dev, int index)
{
	struct opp_table *opp_table;

	/* Hold our table modification lock here */
	FUNC6(&opp_table_lock);

	opp_table = FUNC3(dev);
	if (!FUNC0(opp_table))
		goto unlock;

	opp_table = FUNC4(dev, index);
	if (opp_table) {
		if (!FUNC1(dev, opp_table)) {
			FUNC5(opp_table);
			opp_table = NULL;
		}
		goto unlock;
	}

	opp_table = FUNC2(dev, index);

unlock:
	FUNC7(&opp_table_lock);

	return opp_table;
}