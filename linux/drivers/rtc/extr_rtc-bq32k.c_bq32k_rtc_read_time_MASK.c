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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_wday; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct bq32k_regs {int minutes; int seconds; int cent_hours; int date; int day; int month; int years; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int BQ32K_CENT ; 
 int BQ32K_HOURS_MASK ; 
 int BQ32K_MINUTES_MASK ; 
 int BQ32K_OF ; 
 int BQ32K_SECONDS_MASK ; 
 int EINVAL ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct device*,struct bq32k_regs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	struct bq32k_regs regs;
	int error;

	error = FUNC1(dev, &regs, 0, sizeof(regs));
	if (error)
		return error;

	/*
	 * In case of oscillator failure, the register contents should be
	 * considered invalid. The flag is cleared the next time the RTC is set.
	 */
	if (regs.minutes & BQ32K_OF)
		return -EINVAL;

	tm->tm_sec = FUNC0(regs.seconds & BQ32K_SECONDS_MASK);
	tm->tm_min = FUNC0(regs.minutes & BQ32K_MINUTES_MASK);
	tm->tm_hour = FUNC0(regs.cent_hours & BQ32K_HOURS_MASK);
	tm->tm_mday = FUNC0(regs.date);
	tm->tm_wday = FUNC0(regs.day) - 1;
	tm->tm_mon = FUNC0(regs.month) - 1;
	tm->tm_year = FUNC0(regs.years) +
				((regs.cent_hours & BQ32K_CENT) ? 100 : 0);

	return 0;
}