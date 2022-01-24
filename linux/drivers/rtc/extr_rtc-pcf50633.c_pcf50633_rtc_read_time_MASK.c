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
struct rtc_time {int dummy; } ;
struct pcf50633_time {int /*<<< orphan*/ * time; } ;
struct pcf50633_rtc {int /*<<< orphan*/  pcf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCF50633_REG_RTCSC ; 
 size_t PCF50633_TI_DAY ; 
 int PCF50633_TI_EXTENT ; 
 size_t PCF50633_TI_HOUR ; 
 size_t PCF50633_TI_MIN ; 
 size_t PCF50633_TI_MONTH ; 
 size_t PCF50633_TI_SEC ; 
 size_t PCF50633_TI_YEAR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct rtc_time*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pcf50633_rtc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*,struct pcf50633_time*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct pcf50633_rtc *rtc;
	struct pcf50633_time pcf_tm;
	int ret;

	rtc = FUNC2(dev);

	ret = FUNC4(rtc->pcf, PCF50633_REG_RTCSC,
					    PCF50633_TI_EXTENT,
					    &pcf_tm.time[0]);
	if (ret != PCF50633_TI_EXTENT) {
		FUNC1(dev, "Failed to read time\n");
		return -EIO;
	}

	FUNC0(dev, "PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\n",
		pcf_tm.time[PCF50633_TI_DAY],
		pcf_tm.time[PCF50633_TI_MONTH],
		pcf_tm.time[PCF50633_TI_YEAR],
		pcf_tm.time[PCF50633_TI_HOUR],
		pcf_tm.time[PCF50633_TI_MIN],
		pcf_tm.time[PCF50633_TI_SEC]);

	FUNC3(tm, &pcf_tm);

	FUNC0(dev, "RTC_TIME: %ptRr\n", tm);

	return 0;
}