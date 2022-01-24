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
union power_supply_propval {int intval; } ;
typedef  scalar_t__ u8 ;
struct bq24190_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BQ24190_REG_CCC ; 
 int /*<<< orphan*/  BQ24190_REG_CCC_FORCE_20PCT_MASK ; 
 int /*<<< orphan*/  BQ24190_REG_CCC_FORCE_20PCT_SHIFT ; 
 int /*<<< orphan*/  BQ24190_REG_CCC_ICHG_MASK ; 
 int /*<<< orphan*/  BQ24190_REG_CCC_ICHG_SHIFT ; 
 int /*<<< orphan*/  bq24190_ccc_ichg_values ; 
 int FUNC1 (struct bq24190_dev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (struct bq24190_dev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct bq24190_dev_info *bdi,
		const union power_supply_propval *val)
{
	u8 v;
	int ret, curr = val->intval;

	ret = FUNC1(bdi, BQ24190_REG_CCC,
			BQ24190_REG_CCC_FORCE_20PCT_MASK,
			BQ24190_REG_CCC_FORCE_20PCT_SHIFT, &v);
	if (ret < 0)
		return ret;

	/* If FORCE_20PCT is enabled, have to multiply value passed in by 5 */
	if (v)
		curr *= 5;

	return FUNC2(bdi, BQ24190_REG_CCC,
			BQ24190_REG_CCC_ICHG_MASK, BQ24190_REG_CCC_ICHG_SHIFT,
			bq24190_ccc_ichg_values,
			FUNC0(bq24190_ccc_ichg_values), curr);
}