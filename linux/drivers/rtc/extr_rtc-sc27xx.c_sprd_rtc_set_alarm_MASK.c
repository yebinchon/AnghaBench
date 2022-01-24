#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time64_t ;
struct sprd_rtc {scalar_t__ base; int /*<<< orphan*/  regmap; TYPE_3__* rtc; } ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; TYPE_1__ node; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_RTC_ALARM ; 
 int /*<<< orphan*/  SPRD_RTC_ALARM_EN ; 
 scalar_t__ SPRD_RTC_INT_CLR ; 
 scalar_t__ SPRD_RTC_INT_EN ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtc_time FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rtc_time*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sprd_rtc*,int) ; 
 int FUNC7 (struct device*,struct rtc_wkalrm*) ; 
 int FUNC8 (struct sprd_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	time64_t secs = FUNC5(&alrm->time);
	struct rtc_time aie_time =
		FUNC3(rtc->rtc->aie_timer.node.expires);
	int ret;

	/*
	 * We have 2 groups alarms: normal alarm and auxiliary alarm. Since
	 * both normal alarm event and auxiliary alarm event can wake up system
	 * from deep sleep, but only alarm event can power up system from power
	 * down status. Moreover we do not need to poll about 125ms when
	 * updating auxiliary alarm registers. Thus we usually set auxiliary
	 * alarm when wake up system from deep sleep, and for other scenarios,
	 * we should set normal alarm with polling status.
	 *
	 * So here we check if the alarm time is set by aie_timer, if yes, we
	 * should set normal alarm, if not, we should set auxiliary alarm which
	 * means it is just a wake event.
	 */
	if (!rtc->rtc->aie_timer.enabled || FUNC4(&aie_time, &alrm->time))
		return FUNC7(dev, alrm);

	/* clear the alarm interrupt status firstly */
	ret = FUNC2(rtc->regmap, rtc->base + SPRD_RTC_INT_CLR,
			   SPRD_RTC_ALARM_EN);
	if (ret)
		return ret;

	ret = FUNC8(rtc, SPRD_RTC_ALARM, secs);
	if (ret)
		return ret;

	if (alrm->enabled) {
		ret = FUNC1(rtc->regmap,
					 rtc->base + SPRD_RTC_INT_EN,
					 SPRD_RTC_ALARM_EN,
					 SPRD_RTC_ALARM_EN);
		if (ret)
			return ret;

		/* unlock the alarm to enable the alarm function. */
		ret = FUNC6(rtc, false);
	} else {
		FUNC1(rtc->regmap,
				   rtc->base + SPRD_RTC_INT_EN,
				   SPRD_RTC_ALARM_EN, 0);

		/*
		 * Lock the alarm function in case fake alarm event will power
		 * up systems.
		 */
		ret = FUNC6(rtc, true);
	}

	return ret;
}