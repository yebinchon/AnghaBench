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
typedef  int u8 ;
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct max77686_rtc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* drv_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rtc_regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int* map; unsigned int const alarm_pending_status_reg; scalar_t__ alarm_enable_reg; } ;

/* Variables and functions */
 int ALARM_ENABLE_MASK ; 
 int FUNC0 (int*) ; 
 int EINVAL ; 
 unsigned int const MAX77686_INVALID_REG ; 
 int /*<<< orphan*/  MAX77686_RTC_READ ; 
 size_t REG_ALARM1_SEC ; 
 size_t REG_RTC_AE1 ; 
 unsigned int const REG_RTC_NONE ; 
 int RTC_NR_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct max77686_rtc_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,struct max77686_rtc_info*) ; 
 int FUNC4 (struct max77686_rtc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int const,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int const,unsigned int*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct max77686_rtc_info *info = FUNC2(dev);
	u8 data[RTC_NR_TIME];
	unsigned int val;
	const unsigned int *map = info->drv_data->map;
	int i, ret;

	FUNC5(&info->lock);

	ret = FUNC4(info, MAX77686_RTC_READ);
	if (ret < 0)
		goto out;

	ret = FUNC7(info->rtc_regmap, map[REG_ALARM1_SEC],
			       data, FUNC0(data));
	if (ret < 0) {
		FUNC1(info->dev, "Fail to read alarm reg(%d)\n", ret);
		goto out;
	}

	FUNC3(data, &alrm->time, info);

	alrm->enabled = 0;

	if (info->drv_data->alarm_enable_reg) {
		if (map[REG_RTC_AE1] == REG_RTC_NONE) {
			ret = -EINVAL;
			FUNC1(info->dev,
				"alarm enable register not set(%d)\n", ret);
			goto out;
		}

		ret = FUNC8(info->rtc_regmap, map[REG_RTC_AE1], &val);
		if (ret < 0) {
			FUNC1(info->dev,
				"fail to read alarm enable(%d)\n", ret);
			goto out;
		}

		if (val)
			alrm->enabled = 1;
	} else {
		for (i = 0; i < FUNC0(data); i++) {
			if (data[i] & ALARM_ENABLE_MASK) {
				alrm->enabled = 1;
				break;
			}
		}
	}

	alrm->pending = 0;

	if (info->drv_data->alarm_pending_status_reg == MAX77686_INVALID_REG)
		goto out;

	ret = FUNC8(info->regmap,
			  info->drv_data->alarm_pending_status_reg, &val);
	if (ret < 0) {
		FUNC1(info->dev,
			"Fail to read alarm pending status reg(%d)\n", ret);
		goto out;
	}

	if (val & (1 << 4)) /* RTCA1 */
		alrm->pending = 1;

out:
	FUNC6(&info->lock);
	return ret;
}