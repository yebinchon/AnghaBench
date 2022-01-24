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
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct armada38x_rtc*) ; 
 struct armada38x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct armada38x_rtc*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct armada38x_rtc *rtc = FUNC1(dev);
	unsigned long time, flags;

	time = FUNC3(tm);

	if (!rtc->initialized)
		FUNC0(rtc);

	FUNC4(&rtc->lock, flags);
	FUNC2(time, rtc, RTC_TIME);
	FUNC5(&rtc->lock, flags);

	return 0;
}