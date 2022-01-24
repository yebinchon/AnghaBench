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
typedef  int u32 ;
typedef  void* u16 ;
struct rtc_time {void* tm_mon; void* tm_year; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; struct rtc_time time; } ;
struct mt6397_rtc {int /*<<< orphan*/  lock; scalar_t__ addr_base; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_AL_SEC ; 
 scalar_t__ RTC_IRQ_EN ; 
 int RTC_IRQ_EN_AL ; 
 scalar_t__ RTC_MIN_YEAR_OFFSET ; 
 int RTC_OFFSET_COUNT ; 
 size_t RTC_OFFSET_DOM ; 
 size_t RTC_OFFSET_HOUR ; 
 size_t RTC_OFFSET_MIN ; 
 size_t RTC_OFFSET_MTH ; 
 size_t RTC_OFFSET_SEC ; 
 size_t RTC_OFFSET_YEAR ; 
 scalar_t__ RTC_PDN2 ; 
 int RTC_PDN2_PWRON_ALARM ; 
 struct mt6397_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,void**,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	struct rtc_time *tm = &alm->time;
	struct mt6397_rtc *rtc = FUNC0(dev);
	u32 irqen, pdn2;
	int ret;
	u16 data[RTC_OFFSET_COUNT];

	FUNC1(&rtc->lock);
	ret = FUNC4(rtc->regmap, rtc->addr_base + RTC_IRQ_EN, &irqen);
	if (ret < 0)
		goto err_exit;
	ret = FUNC4(rtc->regmap, rtc->addr_base + RTC_PDN2, &pdn2);
	if (ret < 0)
		goto err_exit;

	ret = FUNC3(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
			       data, RTC_OFFSET_COUNT);
	if (ret < 0)
		goto err_exit;

	alm->enabled = !!(irqen & RTC_IRQ_EN_AL);
	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
	FUNC2(&rtc->lock);

	tm->tm_sec = data[RTC_OFFSET_SEC];
	tm->tm_min = data[RTC_OFFSET_MIN];
	tm->tm_hour = data[RTC_OFFSET_HOUR];
	tm->tm_mday = data[RTC_OFFSET_DOM];
	tm->tm_mon = data[RTC_OFFSET_MTH];
	tm->tm_year = data[RTC_OFFSET_YEAR];

	tm->tm_year += RTC_MIN_YEAR_OFFSET;
	tm->tm_mon--;

	return 0;
err_exit:
	FUNC2(&rtc->lock);
	return ret;
}