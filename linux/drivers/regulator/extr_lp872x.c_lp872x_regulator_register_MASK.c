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
struct regulator_dev {int dummy; } ;
struct regulator_desc {int /*<<< orphan*/  id; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct lp872x* driver_data; int /*<<< orphan*/  init_data; int /*<<< orphan*/  dev; } ;
struct lp872x {int num_regulators; scalar_t__ chipid; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 scalar_t__ LP8720 ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct regulator_dev* FUNC3 (int /*<<< orphan*/ ,struct regulator_desc const*,struct regulator_config*) ; 
 struct regulator_desc* lp8720_regulator_desc ; 
 struct regulator_desc* lp8725_regulator_desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct lp872x*) ; 

__attribute__((used)) static int FUNC5(struct lp872x *lp)
{
	const struct regulator_desc *desc;
	struct regulator_config cfg = { };
	struct regulator_dev *rdev;
	int i;

	for (i = 0; i < lp->num_regulators; i++) {
		desc = (lp->chipid == LP8720) ? &lp8720_regulator_desc[i] :
						&lp8725_regulator_desc[i];

		cfg.dev = lp->dev;
		cfg.init_data = FUNC4(desc->id, lp);
		cfg.driver_data = lp;
		cfg.regmap = lp->regmap;

		rdev = FUNC3(lp->dev, desc, &cfg);
		if (FUNC0(rdev)) {
			FUNC2(lp->dev, "regulator register err");
			return FUNC1(rdev);
		}
	}

	return 0;
}