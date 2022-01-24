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
typedef  int u8 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {int rtc_ready_to_read_mask; int /*<<< orphan*/  rtc_count_secs_reg; } ;
struct da9063_compatible_rtc {int rtc_sync; struct rtc_time alarm_time; int /*<<< orphan*/  regmap; struct da9063_compatible_rtc_regmap* config; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTC_DATA_LEN ; 
 size_t RTC_SEC ; 
 int /*<<< orphan*/  FUNC0 (int*,struct rtc_time*,struct da9063_compatible_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct da9063_compatible_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*,struct rtc_time*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 unsigned long FUNC6 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct da9063_compatible_rtc *rtc = FUNC3(dev);
	const struct da9063_compatible_rtc_regmap *config = rtc->config;
	unsigned long tm_secs;
	unsigned long al_secs;
	u8 data[RTC_DATA_LEN];
	int ret;

	ret = FUNC5(rtc->regmap,
			       config->rtc_count_secs_reg,
			       data, RTC_DATA_LEN);
	if (ret < 0) {
		FUNC2(dev, "Failed to read RTC time data: %d\n", ret);
		return ret;
	}

	if (!(data[RTC_SEC] & config->rtc_ready_to_read_mask)) {
		FUNC1(dev, "RTC not yet ready to be read by the host\n");
		return -EINVAL;
	}

	FUNC0(data, tm, rtc);

	tm_secs = FUNC6(tm);
	al_secs = FUNC6(&rtc->alarm_time);

	/* handle the rtc synchronisation delay */
	if (rtc->rtc_sync == true && al_secs - tm_secs == 1)
		FUNC4(tm, &rtc->alarm_time, sizeof(struct rtc_time));
	else
		rtc->rtc_sync = false;

	return 0;
}