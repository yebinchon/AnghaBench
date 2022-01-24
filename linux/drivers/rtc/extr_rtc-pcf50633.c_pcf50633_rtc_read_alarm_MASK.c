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
struct rtc_wkalrm {int /*<<< orphan*/  time; int /*<<< orphan*/  pending; int /*<<< orphan*/  enabled; } ;
struct pcf50633_time {int /*<<< orphan*/ * time; } ;
struct pcf50633_rtc {int /*<<< orphan*/  pcf; int /*<<< orphan*/  alarm_pending; int /*<<< orphan*/  alarm_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCF50633_REG_RTCSCA ; 
 int PCF50633_TI_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct pcf50633_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pcf50633_time*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pcf50633_rtc *rtc;
	struct pcf50633_time pcf_tm;
	int ret = 0;

	rtc = FUNC1(dev);

	alrm->enabled = rtc->alarm_enabled;
	alrm->pending = rtc->alarm_pending;

	ret = FUNC3(rtc->pcf, PCF50633_REG_RTCSCA,
				PCF50633_TI_EXTENT, &pcf_tm.time[0]);
	if (ret != PCF50633_TI_EXTENT) {
		FUNC0(dev, "Failed to read time\n");
		return -EIO;
	}

	FUNC2(&alrm->time, &pcf_tm);

	return FUNC4(&alrm->time);
}