#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; scalar_t__ pending; TYPE_1__ time; } ;
struct mrst_rtc {scalar_t__ irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned char RTC_AIE ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  RTC_HOURS_ALARM ; 
 int /*<<< orphan*/  RTC_MINUTES_ALARM ; 
 int /*<<< orphan*/  RTC_SECONDS_ALARM ; 
 struct mrst_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *t)
{
	struct mrst_rtc	*mrst = FUNC0(dev);
	unsigned char rtc_control;

	if (mrst->irq <= 0)
		return -EIO;

	/* vRTC only supports binary mode */
	FUNC1(&rtc_lock);
	t->time.tm_sec = FUNC3(RTC_SECONDS_ALARM);
	t->time.tm_min = FUNC3(RTC_MINUTES_ALARM);
	t->time.tm_hour = FUNC3(RTC_HOURS_ALARM);

	rtc_control = FUNC3(RTC_CONTROL);
	FUNC2(&rtc_lock);

	t->enabled = !!(rtc_control & RTC_AIE);
	t->pending = 0;

	return 0;
}