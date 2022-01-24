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
struct pm860x_battery_info {int resistor; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ present; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OCV_MODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct pm860x_battery_info*,int*) ; 
 int FUNC2 (struct pm860x_battery_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pm860x_battery_info *info, int *ocv)
{
	int ret;
	int i;
	int data;
	int vbatt_avg;
	int vbatt_sum;
	int ibatt_avg;
	int ibatt_sum;

	if (!ocv)
		return -EINVAL;

	for (i = 0, ibatt_sum = 0, vbatt_sum = 0; i < 10; i++) {
		ret = FUNC2(info, OCV_MODE_ACTIVE, &data);
		if (ret)
			goto out;
		vbatt_sum += data;
		ret = FUNC1(info, &data);
		if (ret)
			goto out;
		ibatt_sum += data;
	}
	vbatt_avg = vbatt_sum / 10;
	ibatt_avg = ibatt_sum / 10;

	FUNC3(&info->lock);
	if (info->present)
		*ocv = vbatt_avg - ibatt_avg * info->resistor / 1000;
	else
		*ocv = vbatt_avg;
	FUNC4(&info->lock);
	FUNC0(info->dev, "VBAT average:%d, OCV:%d\n", vbatt_avg, *ocv);
	return 0;
out:
	return ret;
}