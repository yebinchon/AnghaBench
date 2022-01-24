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
typedef  int /*<<< orphan*/  u8 ;
struct spmi_voltage_range {int range_sel; } ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPMI_COMMON_REG_VOLTAGE_SET ; 
 int /*<<< orphan*/  ULT_SMPS_RANGE_SPLIT ; 
 struct spmi_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct spmi_regulator*,int /*<<< orphan*/ ,struct spmi_voltage_range const*) ; 
 struct spmi_voltage_range* FUNC2 (struct spmi_regulator*) ; 
 int /*<<< orphan*/  FUNC3 (struct spmi_regulator*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct spmi_regulator *vreg = FUNC0(rdev);
	const struct spmi_voltage_range *range;
	u8 voltage_sel;

	FUNC3(vreg, SPMI_COMMON_REG_VOLTAGE_SET, &voltage_sel, 1);

	range = FUNC2(vreg);
	if (!range)
		return -EINVAL;

	if (range->range_sel == 1)
		voltage_sel &= ~ULT_SMPS_RANGE_SPLIT;

	return FUNC1(vreg, voltage_sel, range);
}