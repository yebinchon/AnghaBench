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
struct regulator_notifier_match {struct notifier_block* nb; struct regulator* regulator; } ;
struct regulator {int /*<<< orphan*/  dev; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_regulator_destroy_notifier ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct regulator_notifier_match*) ; 
 struct regulator_notifier_match* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_notifier_match*) ; 
 int FUNC3 (struct regulator*,struct notifier_block*) ; 

int FUNC4(struct regulator *regulator,
				     struct notifier_block *nb)
{
	struct regulator_notifier_match *match;
	int ret;

	match = FUNC1(devm_regulator_destroy_notifier,
			     sizeof(struct regulator_notifier_match),
			     GFP_KERNEL);
	if (!match)
		return -ENOMEM;

	match->regulator = regulator;
	match->nb = nb;

	ret = FUNC3(regulator, nb);
	if (ret < 0) {
		FUNC2(match);
		return ret;
	}

	FUNC0(regulator->dev, match);

	return 0;
}