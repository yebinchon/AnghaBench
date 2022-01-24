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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opp_table*) ; 
 int FUNC1 (struct opp_table*) ; 
 struct opp_table* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct opp_table*) ; 

int FUNC5(struct device *dev,
				   struct notifier_block *nb)
{
	struct opp_table *opp_table;
	int ret;

	opp_table = FUNC2(dev);
	if (FUNC0(opp_table))
		return FUNC1(opp_table);

	ret = FUNC3(&opp_table->head, nb);

	FUNC4(opp_table);

	return ret;
}