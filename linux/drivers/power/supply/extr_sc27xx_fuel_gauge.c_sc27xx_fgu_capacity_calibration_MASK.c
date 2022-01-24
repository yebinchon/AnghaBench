#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sc27xx_fgu_data {int table_len; int min_volt; int alarm_cap; scalar_t__ base; int /*<<< orphan*/  regmap; TYPE_1__* cap_table; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int ocv; } ;

/* Variables and functions */
 int POWER_SUPPLY_STATUS_CHARGING ; 
 scalar_t__ SC27XX_FGU_LOW_OVERLOAD ; 
 int /*<<< orphan*/  SC27XX_FGU_LOW_OVERLOAD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc27xx_fgu_data*,int) ; 
 int FUNC4 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC5 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC6 (struct sc27xx_fgu_data*,int) ; 

__attribute__((used)) static void FUNC7(struct sc27xx_fgu_data *data,
					    int cap, bool int_mode)
{
	int ret, ocv, chg_sts, adc;

	ret = FUNC5(data, &ocv);
	if (ret) {
		FUNC0(data->dev, "get battery ocv error.\n");
		return;
	}

	ret = FUNC4(data, &chg_sts);
	if (ret) {
		FUNC0(data->dev, "get charger status error.\n");
		return;
	}

	/*
	 * If we are in charging mode, then we do not need to calibrate the
	 * lower capacity.
	 */
	if (chg_sts == POWER_SUPPLY_STATUS_CHARGING)
		return;

	if ((ocv > data->cap_table[0].ocv && cap < 100) || cap > 100) {
		/*
		 * If current OCV value is larger than the max OCV value in
		 * OCV table, or the current capacity is larger than 100,
		 * we should force the inititial capacity to 100.
		 */
		FUNC3(data, 100);
	} else if (ocv <= data->cap_table[data->table_len - 1].ocv) {
		/*
		 * If current OCV value is leass than the minimum OCV value in
		 * OCV table, we should force the inititial capacity to 0.
		 */
		FUNC3(data, 0);
	} else if ((ocv > data->cap_table[data->table_len - 1].ocv && cap <= 0) ||
		   (ocv > data->min_volt && cap <= data->alarm_cap)) {
		/*
		 * If current OCV value is not matchable with current capacity,
		 * we should re-calculate current capacity by looking up the
		 * OCV table.
		 */
		int cur_cap = FUNC1(data->cap_table,
							  data->table_len, ocv);

		FUNC3(data, cur_cap);
	} else if (ocv <= data->min_volt) {
		/*
		 * If current OCV value is less than the low alarm voltage, but
		 * current capacity is larger than the alarm capacity, we should
		 * adjust the inititial capacity to alarm capacity.
		 */
		if (cap > data->alarm_cap) {
			FUNC3(data, data->alarm_cap);
		} else {
			int cur_cap;

			/*
			 * If current capacity is equal with 0 or less than 0
			 * (some error occurs), we should adjust inititial
			 * capacity to the capacity corresponding to current OCV
			 * value.
			 */
			cur_cap = FUNC1(data->cap_table,
							      data->table_len,
							      ocv);
			FUNC3(data, cur_cap);
		}

		if (!int_mode)
			return;

		/*
		 * After adjusting the battery capacity, we should set the
		 * lowest alarm voltage instead.
		 */
		data->min_volt = data->cap_table[data->table_len - 1].ocv;
		data->alarm_cap = FUNC1(data->cap_table,
							      data->table_len,
							      data->min_volt);

		adc = FUNC6(data, data->min_volt / 1000);
		FUNC2(data->regmap,
				   data->base + SC27XX_FGU_LOW_OVERLOAD,
				   SC27XX_FGU_LOW_OVERLOAD_MASK, adc);
	}
}