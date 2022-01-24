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
struct rtc_time {unsigned char tm_sec; unsigned char tm_min; unsigned char tm_hour; unsigned char tm_mday; int tm_mon; int tm_year; unsigned char tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T86_B ; 
 unsigned char M48T86_B_DM ; 
 unsigned char M48T86_B_H24 ; 
 unsigned char M48T86_B_SET ; 
 int /*<<< orphan*/  M48T86_DOM ; 
 int /*<<< orphan*/  M48T86_DOW ; 
 int /*<<< orphan*/  M48T86_HOUR ; 
 int /*<<< orphan*/  M48T86_MIN ; 
 int /*<<< orphan*/  M48T86_MONTH ; 
 int /*<<< orphan*/  M48T86_SEC ; 
 int /*<<< orphan*/  M48T86_YEAR ; 
 unsigned char FUNC0 (int) ; 
 unsigned char FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	unsigned char reg;

	reg = FUNC1(dev, M48T86_B);

	/* update flag and 24h mode */
	reg |= M48T86_B_SET | M48T86_B_H24;
	FUNC2(dev, reg, M48T86_B);

	if (reg & M48T86_B_DM) {
		/* data (binary) mode */
		FUNC2(dev, tm->tm_sec, M48T86_SEC);
		FUNC2(dev, tm->tm_min, M48T86_MIN);
		FUNC2(dev, tm->tm_hour, M48T86_HOUR);
		FUNC2(dev, tm->tm_mday, M48T86_DOM);
		FUNC2(dev, tm->tm_mon + 1, M48T86_MONTH);
		FUNC2(dev, tm->tm_year % 100, M48T86_YEAR);
		FUNC2(dev, tm->tm_wday, M48T86_DOW);
	} else {
		/* bcd mode */
		FUNC2(dev, FUNC0(tm->tm_sec), M48T86_SEC);
		FUNC2(dev, FUNC0(tm->tm_min), M48T86_MIN);
		FUNC2(dev, FUNC0(tm->tm_hour), M48T86_HOUR);
		FUNC2(dev, FUNC0(tm->tm_mday), M48T86_DOM);
		FUNC2(dev, FUNC0(tm->tm_mon + 1), M48T86_MONTH);
		FUNC2(dev, FUNC0(tm->tm_year % 100), M48T86_YEAR);
		FUNC2(dev, FUNC0(tm->tm_wday), M48T86_DOW);
	}

	/* update ended */
	reg &= ~M48T86_B_SET;
	FUNC2(dev, reg, M48T86_B);

	return 0;
}