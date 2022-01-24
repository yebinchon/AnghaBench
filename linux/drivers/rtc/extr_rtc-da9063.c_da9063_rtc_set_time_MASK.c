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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {int /*<<< orphan*/  rtc_count_secs_reg; } ;
struct da9063_compatible_rtc {int /*<<< orphan*/  regmap; struct da9063_compatible_rtc_regmap* config; } ;

/* Variables and functions */
 int RTC_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*,int /*<<< orphan*/ *,struct da9063_compatible_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct da9063_compatible_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct da9063_compatible_rtc *rtc = FUNC2(dev);
	const struct da9063_compatible_rtc_regmap *config = rtc->config;
	u8 data[RTC_DATA_LEN];
	int ret;

	FUNC0(tm, data, rtc);
	ret = FUNC3(rtc->regmap,
				config->rtc_count_secs_reg,
				data, RTC_DATA_LEN);
	if (ret < 0)
		FUNC1(dev, "Failed to set RTC time data: %d\n", ret);

	return ret;
}