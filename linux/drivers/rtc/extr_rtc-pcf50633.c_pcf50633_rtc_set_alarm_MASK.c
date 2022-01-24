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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct pcf50633_time {int* time; } ;
struct pcf50633_rtc {scalar_t__ alarm_enabled; int /*<<< orphan*/  pcf; scalar_t__ alarm_pending; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ALARM ; 
 int /*<<< orphan*/  PCF50633_REG_RTCSCA ; 
 int /*<<< orphan*/  PCF50633_TI_EXTENT ; 
 size_t PCF50633_TI_WKDAY ; 
 struct pcf50633_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcf50633_time*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pcf50633_rtc *rtc;
	struct pcf50633_time pcf_tm;
	int alarm_masked, ret = 0;

	rtc = FUNC0(dev);

	FUNC5(&pcf_tm, &alrm->time);

	/* do like mktime does and ignore tm_wday */
	pcf_tm.time[PCF50633_TI_WKDAY] = 7;

	alarm_masked = FUNC2(rtc->pcf, PCF50633_IRQ_ALARM);

	/* disable alarm interrupt */
	if (!alarm_masked)
		FUNC1(rtc->pcf, PCF50633_IRQ_ALARM);

	/* Returns 0 on success */
	ret = FUNC4(rtc->pcf, PCF50633_REG_RTCSCA,
				PCF50633_TI_EXTENT, &pcf_tm.time[0]);
	if (!alrm->enabled)
		rtc->alarm_pending = 0;

	if (!alarm_masked || alrm->enabled)
		FUNC3(rtc->pcf, PCF50633_IRQ_ALARM);
	rtc->alarm_enabled = alrm->enabled;

	return ret;
}