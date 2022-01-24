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
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {size_t rtc_data_start; int rtc_alarm_on_mask; unsigned int rtc_event_alarm_mask; int /*<<< orphan*/  rtc_event_reg; int /*<<< orphan*/  rtc_alarm_len; int /*<<< orphan*/  rtc_alarm_secs_reg; } ;
struct da9063_compatible_rtc {int /*<<< orphan*/  regmap; struct da9063_compatible_rtc_regmap* config; } ;

/* Variables and functions */
 int RTC_DATA_LEN ; 
 size_t RTC_SEC ; 
 size_t RTC_YEAR ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,struct da9063_compatible_rtc*) ; 
 struct da9063_compatible_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct da9063_compatible_rtc *rtc = FUNC1(dev);
	const struct da9063_compatible_rtc_regmap *config = rtc->config;
	u8 data[RTC_DATA_LEN];
	int ret;
	unsigned int val;

	data[RTC_SEC] = 0;
	ret = FUNC2(rtc->regmap,
			       config->rtc_alarm_secs_reg,
			       &data[config->rtc_data_start],
			       config->rtc_alarm_len);
	if (ret < 0)
		return ret;

	FUNC0(data, &alrm->time, rtc);

	alrm->enabled = !!(data[RTC_YEAR] & config->rtc_alarm_on_mask);

	ret = FUNC3(rtc->regmap,
			  config->rtc_event_reg,
			  &val);
	if (ret < 0)
		return ret;

	if (val & config->rtc_event_alarm_mask)
		alrm->pending = 1;
	else
		alrm->pending = 0;

	return 0;
}