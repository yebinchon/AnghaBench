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
struct stpmic1_regulator_cfg {int /*<<< orphan*/  icc_mask; int /*<<< orphan*/  icc_reg; } ;
struct regulator_dev {int dummy; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 struct stpmic1_regulator_cfg* FUNC0 (struct regulator_dev*) ; 
 struct regmap* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct stpmic1_regulator_cfg *cfg = FUNC0(rdev);
	struct regmap *regmap = FUNC1(rdev);

	/* enable switch off in case of over current */
	return FUNC2(regmap, cfg->icc_reg, cfg->icc_mask,
				  cfg->icc_mask);
}