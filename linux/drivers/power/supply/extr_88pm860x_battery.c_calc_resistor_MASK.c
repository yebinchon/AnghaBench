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
struct pm860x_battery_info {int resistor; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OCV_MODE_ACTIVE ; 
 int VBATT_RESISTOR_MAX ; 
 int VBATT_RESISTOR_MIN ; 
 int FUNC0 (struct pm860x_battery_info*,int*) ; 
 int FUNC1 (struct pm860x_battery_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct pm860x_battery_info*,int,int*) ; 

__attribute__((used)) static int FUNC4(struct pm860x_battery_info *info)
{
	int vbatt_sum1;
	int vbatt_sum2;
	int chg_current;
	int ibatt_sum1;
	int ibatt_sum2;
	int data;
	int ret;
	int i;

	ret = FUNC0(info, &data);
	/* make sure that charging is launched by data > 0 */
	if (ret || data < 0)
		goto out;

	ret = FUNC1(info, OCV_MODE_ACTIVE, &data);
	if (ret)
		goto out;
	/* calculate resistor only in CC charge mode */
	if (data < VBATT_RESISTOR_MIN || data > VBATT_RESISTOR_MAX)
		goto out;

	/* current is saved */
	if (FUNC3(info, 500, &chg_current))
		goto out;

	/*
	 * set charge current as 500mA, wait about 500ms till charging
	 * process is launched and stable with the newer charging current.
	 */
	FUNC2(500);

	for (i = 0, vbatt_sum1 = 0, ibatt_sum1 = 0; i < 10; i++) {
		ret = FUNC1(info, OCV_MODE_ACTIVE, &data);
		if (ret)
			goto out_meas;
		vbatt_sum1 += data;
		ret = FUNC0(info, &data);
		if (ret)
			goto out_meas;

		if (data < 0)
			ibatt_sum1 = ibatt_sum1 - data;	/* discharging */
		else
			ibatt_sum1 = ibatt_sum1 + data;	/* charging */
	}

	if (FUNC3(info, 100, &ret))
		goto out_meas;
	/*
	 * set charge current as 100mA, wait about 500ms till charging
	 * process is launched and stable with the newer charging current.
	 */
	FUNC2(500);

	for (i = 0, vbatt_sum2 = 0, ibatt_sum2 = 0; i < 10; i++) {
		ret = FUNC1(info, OCV_MODE_ACTIVE, &data);
		if (ret)
			goto out_meas;
		vbatt_sum2 += data;
		ret = FUNC0(info, &data);
		if (ret)
			goto out_meas;

		if (data < 0)
			ibatt_sum2 = ibatt_sum2 - data;	/* discharging */
		else
			ibatt_sum2 = ibatt_sum2 + data;	/* charging */
	}

	/* restore current setting */
	if (FUNC3(info, chg_current, &ret))
		goto out_meas;

	if ((vbatt_sum1 > vbatt_sum2) && (ibatt_sum1 > ibatt_sum2) &&
			(ibatt_sum2 > 0)) {
		/* calculate resistor in discharging case */
		data = 1000 * (vbatt_sum1 - vbatt_sum2)
		    / (ibatt_sum1 - ibatt_sum2);
		if ((data - info->resistor > 0) &&
				(data - info->resistor < info->resistor))
			info->resistor = data;
		if ((info->resistor - data > 0) &&
				(info->resistor - data < data))
			info->resistor = data;
	}
	return 0;

out_meas:
	FUNC3(info, chg_current, &ret);
out:
	return -EINVAL;
}