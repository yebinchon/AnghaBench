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
struct regulator_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int MCP16502_ENS ; 
 unsigned int MCP16502_FLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REGULATOR_STATUS_ERROR ; 
 int REGULATOR_STATUS_OFF ; 
 int REGULATOR_STATUS_ON ; 
 int REGULATOR_STATUS_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	int ret;
	unsigned int val;

	ret = FUNC2(rdev->regmap, FUNC0(FUNC1(rdev)),
			  &val);
	if (ret)
		return ret;

	if (val & MCP16502_FLT)
		return REGULATOR_STATUS_ERROR;
	else if (val & MCP16502_ENS)
		return REGULATOR_STATUS_ON;
	else if (!(val & MCP16502_ENS))
		return REGULATOR_STATUS_OFF;

	return REGULATOR_STATUS_UNDEFINED;
}