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
struct rtc_time {int /*<<< orphan*/  tm_year; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct mtk_rtc {int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MTK_AL ; 
 int /*<<< orphan*/  MTK_RTC_AL_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_AL_ALL ; 
 int /*<<< orphan*/  RTC_AL_EN ; 
 struct mtk_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_rtc*,struct rtc_time*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct mtk_rtc *hw = FUNC1(dev);
	struct rtc_time *alrm_tm = &wkalrm->time;

	if (!FUNC0(alrm_tm->tm_year))
		return -EINVAL;

	/*
	 * Stop the alarm also implicitly including disables interrupt before
	 * setting a new one.
	 */
	FUNC2(hw, MTK_RTC_AL_CTL, RTC_AL_EN);

	/*
	 * Avoid contention between mtk_rtc_setalarm and IRQ handler so that
	 * disabling the interrupt and awaiting for pending IRQ handler to
	 * complete.
	 */
	FUNC5(hw->irq);

	FUNC3(hw, alrm_tm, MTK_AL);

	/* Restart the alarm with the new setup */
	FUNC4(hw, MTK_RTC_AL_CTL, RTC_AL_ALL);

	return 0;
}