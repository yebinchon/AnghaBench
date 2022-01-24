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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {size_t rtc_data_start; int /*<<< orphan*/  rtc_alarm_len; int /*<<< orphan*/  rtc_alarm_secs_reg; } ;
struct da9063_compatible_rtc {int /*<<< orphan*/  alarm_time; int /*<<< orphan*/  regmap; struct da9063_compatible_rtc_regmap* config; } ;

/* Variables and functions */
 int RTC_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct da9063_compatible_rtc*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct da9063_compatible_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct da9063_compatible_rtc* FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct da9063_compatible_rtc *rtc = FUNC5(dev);
	const struct da9063_compatible_rtc_regmap *config = rtc->config;
	u8 data[RTC_DATA_LEN];
	int ret;

	FUNC3(&alrm->time, data, rtc);

	ret = FUNC2(dev);
	if (ret < 0) {
		FUNC4(dev, "Failed to stop alarm: %d\n", ret);
		return ret;
	}

	ret = FUNC6(rtc->regmap,
				config->rtc_alarm_secs_reg,
				&data[config->rtc_data_start],
				config->rtc_alarm_len);
	if (ret < 0) {
		FUNC4(dev, "Failed to write alarm: %d\n", ret);
		return ret;
	}

	FUNC0(data, &rtc->alarm_time, rtc);

	if (alrm->enabled) {
		ret = FUNC1(dev);
		if (ret < 0) {
			FUNC4(dev, "Failed to start alarm: %d\n", ret);
			return ret;
		}
	}

	return ret;
}