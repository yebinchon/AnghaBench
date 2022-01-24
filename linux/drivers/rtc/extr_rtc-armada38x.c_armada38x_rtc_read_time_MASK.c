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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; TYPE_1__* data; } ;
struct TYPE_2__ {unsigned long (* read_rtc_reg ) (struct armada38x_rtc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_TIME ; 
 struct armada38x_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (struct armada38x_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct armada38x_rtc *rtc = FUNC0(dev);
	unsigned long time, flags;

	FUNC2(&rtc->lock, flags);
	time = rtc->data->read_rtc_reg(rtc, RTC_TIME);
	FUNC3(&rtc->lock, flags);

	FUNC1(time, tm);

	return 0;
}