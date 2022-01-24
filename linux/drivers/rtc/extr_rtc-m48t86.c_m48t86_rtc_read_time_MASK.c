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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T86_B ; 
 unsigned char M48T86_B_DM ; 
 unsigned char M48T86_B_H24 ; 
 int /*<<< orphan*/  M48T86_DOM ; 
 int /*<<< orphan*/  M48T86_DOW ; 
 int /*<<< orphan*/  M48T86_HOUR ; 
 int /*<<< orphan*/  M48T86_MIN ; 
 int /*<<< orphan*/  M48T86_MONTH ; 
 int /*<<< orphan*/  M48T86_SEC ; 
 int /*<<< orphan*/  M48T86_YEAR ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	unsigned char reg;

	reg = FUNC1(dev, M48T86_B);

	if (reg & M48T86_B_DM) {
		/* data (binary) mode */
		tm->tm_sec	= FUNC1(dev, M48T86_SEC);
		tm->tm_min	= FUNC1(dev, M48T86_MIN);
		tm->tm_hour	= FUNC1(dev, M48T86_HOUR) & 0x3f;
		tm->tm_mday	= FUNC1(dev, M48T86_DOM);
		/* tm_mon is 0-11 */
		tm->tm_mon	= FUNC1(dev, M48T86_MONTH) - 1;
		tm->tm_year	= FUNC1(dev, M48T86_YEAR) + 100;
		tm->tm_wday	= FUNC1(dev, M48T86_DOW);
	} else {
		/* bcd mode */
		tm->tm_sec	= FUNC0(FUNC1(dev, M48T86_SEC));
		tm->tm_min	= FUNC0(FUNC1(dev, M48T86_MIN));
		tm->tm_hour	= FUNC0(FUNC1(dev, M48T86_HOUR) &
					  0x3f);
		tm->tm_mday	= FUNC0(FUNC1(dev, M48T86_DOM));
		/* tm_mon is 0-11 */
		tm->tm_mon	= FUNC0(FUNC1(dev, M48T86_MONTH)) - 1;
		tm->tm_year	= FUNC0(FUNC1(dev, M48T86_YEAR)) + 100;
		tm->tm_wday	= FUNC0(FUNC1(dev, M48T86_DOW));
	}

	/* correct the hour if the clock is in 12h mode */
	if (!(reg & M48T86_B_H24))
		if (FUNC1(dev, M48T86_HOUR) & 0x80)
			tm->tm_hour += 12;

	return 0;
}