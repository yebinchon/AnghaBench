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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct max77686_rtc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* drv_data; int /*<<< orphan*/  rtc_regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX77686_RTC_WRITE ; 
 size_t REG_ALARM1_SEC ; 
 int RTC_NR_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct max77686_rtc_info* FUNC2 (struct device*) ; 
 int FUNC3 (struct max77686_rtc_info*) ; 
 int FUNC4 (struct max77686_rtc_info*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct max77686_rtc_info*) ; 
 int FUNC6 (struct max77686_rtc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct max77686_rtc_info *info = FUNC2(dev);
	u8 data[RTC_NR_TIME];
	int ret;

	ret = FUNC5(&alrm->time, data, info);
	if (ret < 0)
		return ret;

	FUNC7(&info->lock);

	ret = FUNC4(info);
	if (ret < 0)
		goto out;

	ret = FUNC9(info->rtc_regmap,
				info->drv_data->map[REG_ALARM1_SEC],
				data, FUNC0(data));

	if (ret < 0) {
		FUNC1(info->dev, "Fail to write alarm reg(%d)\n", ret);
		goto out;
	}

	ret = FUNC6(info, MAX77686_RTC_WRITE);
	if (ret < 0)
		goto out;

	if (alrm->enabled)
		ret = FUNC3(info);
out:
	FUNC8(&info->lock);
	return ret;
}