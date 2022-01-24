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
 int MAX77650_REGULATOR_DISABLED ; 
 int FUNC0 (int) ; 
 struct max77650_regulator_desc* FUNC1 (struct regulator_dev*) ; 
 struct regmap* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct max77650_regulator_desc *rdesc;
	struct regmap *map;
	int val, rv, en;

	rdesc = FUNC1(rdev);
	map = FUNC2(rdev);

	rv = FUNC3(map, rdesc->regB, &val);
	if (rv)
		return rv;

	en = FUNC0(val);

	return en != MAX77650_REGULATOR_DISABLED;
}