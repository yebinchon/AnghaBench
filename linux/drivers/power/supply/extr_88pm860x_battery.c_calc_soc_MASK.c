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
struct pm860x_battery_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int EINVAL ; 
#define  OCV_MODE_ACTIVE 129 
#define  OCV_MODE_SLEEP 128 
 int** array_soc ; 
 int FUNC1 (struct pm860x_battery_info*,int*) ; 
 int FUNC2 (struct pm860x_battery_info*,int const,int*) ; 

__attribute__((used)) static int FUNC3(struct pm860x_battery_info *info, int state, int *soc)
{
	int i;
	int ocv;
	int count;
	int ret = -EINVAL;

	if (!soc)
		return -EINVAL;

	switch (state) {
	case OCV_MODE_ACTIVE:
		ret = FUNC1(info, &ocv);
		break;
	case OCV_MODE_SLEEP:
		ret = FUNC2(info, OCV_MODE_SLEEP, &ocv);
		break;
	}
	if (ret)
		return ret;

	count = FUNC0(array_soc);
	if (ocv < array_soc[count - 1][0]) {
		*soc = 0;
		return 0;
	}

	for (i = 0; i < count; i++) {
		if (ocv >= array_soc[i][0]) {
			*soc = array_soc[i][1];
			break;
		}
	}
	return 0;
}