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
typedef  int u8 ;
struct lp8788_charger_platform_data {unsigned int max_vbatt_mv; } ;
struct lp8788_charger {struct lp8788_charger_platform_data* pdata; struct lp8788* lp; } ;
struct lp8788 {int dummy; } ;
typedef  enum lp8788_charging_state { ____Placeholder_lp8788_charging_state } lp8788_charging_state ;

/* Variables and functions */
 int EINVAL ; 
 int LP8788_CHG_STATE_M ; 
 int LP8788_CHG_STATE_S ; 
 int /*<<< orphan*/  LP8788_CHG_STATUS ; 
 int LP8788_MAINTENANCE ; 
 int LP8788_MAX_BATT_CAPACITY ; 
 int FUNC0 (struct lp8788_charger*,int*) ; 
 int FUNC1 (struct lp8788*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct lp8788_charger *pchg,
				union power_supply_propval *val)
{
	struct lp8788 *lp = pchg->lp;
	struct lp8788_charger_platform_data *pdata = pchg->pdata;
	unsigned int max_vbatt;
	int vbatt;
	enum lp8788_charging_state state;
	u8 data;
	int ret;

	if (!pdata)
		return -EINVAL;

	max_vbatt = pdata->max_vbatt_mv;
	if (max_vbatt == 0)
		return -EINVAL;

	ret = FUNC1(lp, LP8788_CHG_STATUS, &data);
	if (ret)
		return ret;

	state = (data & LP8788_CHG_STATE_M) >> LP8788_CHG_STATE_S;

	if (state == LP8788_MAINTENANCE) {
		val->intval = LP8788_MAX_BATT_CAPACITY;
	} else {
		ret = FUNC0(pchg, &vbatt);
		if (ret)
			return ret;

		val->intval = (vbatt * LP8788_MAX_BATT_CAPACITY) / max_vbatt;
		val->intval = FUNC2(val->intval, LP8788_MAX_BATT_CAPACITY);
	}

	return 0;
}