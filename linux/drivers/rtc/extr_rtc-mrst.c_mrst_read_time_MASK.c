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
struct rtc_time {int tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *time)
{
	unsigned long flags;

	if (FUNC4())
		FUNC0(20);

	FUNC1(&rtc_lock, flags);
	time->tm_sec = FUNC3(RTC_SECONDS);
	time->tm_min = FUNC3(RTC_MINUTES);
	time->tm_hour = FUNC3(RTC_HOURS);
	time->tm_mday = FUNC3(RTC_DAY_OF_MONTH);
	time->tm_mon = FUNC3(RTC_MONTH);
	time->tm_year = FUNC3(RTC_YEAR);
	FUNC2(&rtc_lock, flags);

	/* Adjust for the 1972/1900 */
	time->tm_year += 72;
	time->tm_mon--;
	return 0;
}