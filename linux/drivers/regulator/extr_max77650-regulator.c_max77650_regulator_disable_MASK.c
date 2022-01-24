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
struct regmap {int dummy; } ;
struct max77650_regulator_desc {int /*<<< orphan*/  regB; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX77650_REGULATOR_DISABLED ; 
 int /*<<< orphan*/  MAX77650_REGULATOR_EN_CTRL_MASK ; 
 struct max77650_regulator_desc* FUNC0 (struct regulator_dev*) ; 
 struct regmap* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct max77650_regulator_desc *rdesc;
	struct regmap *map;

	rdesc = FUNC0(rdev);
	map = FUNC1(rdev);

	return FUNC2(map, rdesc->regB,
				  MAX77650_REGULATOR_EN_CTRL_MASK,
				  MAX77650_REGULATOR_DISABLED);
}