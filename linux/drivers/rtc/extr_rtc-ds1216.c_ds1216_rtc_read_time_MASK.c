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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_time {int tm_hour; int tm_wday; int tm_year; void* tm_mon; void* tm_mday; void* tm_min; void* tm_sec; } ;
struct ds1216_regs {int sec; int min; int hour; int wday; int mday; int month; int year; } ;
struct ds1216_priv {int /*<<< orphan*/  ioaddr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS1216_HOUR_1224 ; 
 int DS1216_HOUR_AMPM ; 
 void* FUNC0 (int) ; 
 struct ds1216_priv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct ds1216_priv *priv = FUNC1(dev);
	struct ds1216_regs regs;

	FUNC3(priv->ioaddr);
	FUNC2(priv->ioaddr, (u8 *)&regs);

	tm->tm_sec = FUNC0(regs.sec);
	tm->tm_min = FUNC0(regs.min);
	if (regs.hour & DS1216_HOUR_1224) {
		/* AM/PM mode */
		tm->tm_hour = FUNC0(regs.hour & 0x1f);
		if (regs.hour & DS1216_HOUR_AMPM)
			tm->tm_hour += 12;
	} else
		tm->tm_hour = FUNC0(regs.hour & 0x3f);
	tm->tm_wday = (regs.wday & 7) - 1;
	tm->tm_mday = FUNC0(regs.mday & 0x3f);
	tm->tm_mon = FUNC0(regs.month & 0x1f);
	tm->tm_year = FUNC0(regs.year);
	if (tm->tm_year < 70)
		tm->tm_year += 100;

	return 0;
}