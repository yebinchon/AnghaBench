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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX6902_REG_CENTURY ; 
 int /*<<< orphan*/  MAX6902_REG_CONTROL ; 
 int /*<<< orphan*/  MAX6902_REG_DATE ; 
 int /*<<< orphan*/  MAX6902_REG_DAY ; 
 int /*<<< orphan*/  MAX6902_REG_HOURS ; 
 int /*<<< orphan*/  MAX6902_REG_MINUTES ; 
 int /*<<< orphan*/  MAX6902_REG_MONTH ; 
 int /*<<< orphan*/  MAX6902_REG_SECONDS ; 
 int /*<<< orphan*/  MAX6902_REG_YEAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *dt)
{
	dt->tm_year = dt->tm_year + 1900;

	/* Remove write protection */
	FUNC1(dev, MAX6902_REG_CONTROL, 0);

	FUNC1(dev, MAX6902_REG_SECONDS, FUNC0(dt->tm_sec));
	FUNC1(dev, MAX6902_REG_MINUTES, FUNC0(dt->tm_min));
	FUNC1(dev, MAX6902_REG_HOURS, FUNC0(dt->tm_hour));

	FUNC1(dev, MAX6902_REG_DATE, FUNC0(dt->tm_mday));
	FUNC1(dev, MAX6902_REG_MONTH, FUNC0(dt->tm_mon + 1));
	FUNC1(dev, MAX6902_REG_DAY, FUNC0(dt->tm_wday));
	FUNC1(dev, MAX6902_REG_YEAR, FUNC0(dt->tm_year % 100));
	FUNC1(dev, MAX6902_REG_CENTURY, FUNC0(dt->tm_year / 100));

	/* Compulab used a delay here. However, the datasheet
	 * does not mention a delay being required anywhere... */
	/* delay(2000); */

	/* Write protect */
	FUNC1(dev, MAX6902_REG_CONTROL, 0x80);

	return 0;
}