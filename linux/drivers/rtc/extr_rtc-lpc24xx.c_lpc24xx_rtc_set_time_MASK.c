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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_yday; int tm_mon; int tm_year; } ;
struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int LPC178X_CCALEN ; 
 int /*<<< orphan*/  LPC24XX_CCR ; 
 int LPC24XX_CLKEN ; 
 int /*<<< orphan*/  LPC24XX_DOM ; 
 int /*<<< orphan*/  LPC24XX_DOW ; 
 int /*<<< orphan*/  LPC24XX_DOY ; 
 int /*<<< orphan*/  LPC24XX_HOUR ; 
 int /*<<< orphan*/  LPC24XX_MIN ; 
 int /*<<< orphan*/  LPC24XX_MONTH ; 
 int /*<<< orphan*/  LPC24XX_SEC ; 
 int /*<<< orphan*/  LPC24XX_YEAR ; 
 struct lpc24xx_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc24xx_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	struct lpc24xx_rtc *rtc = FUNC0(dev);

	/* Disable RTC during update */
	FUNC1(rtc, LPC24XX_CCR, LPC178X_CCALEN);

	FUNC1(rtc, LPC24XX_SEC,	tm->tm_sec);
	FUNC1(rtc, LPC24XX_MIN,	tm->tm_min);
	FUNC1(rtc, LPC24XX_HOUR,	tm->tm_hour);
	FUNC1(rtc, LPC24XX_DOW,	tm->tm_wday);
	FUNC1(rtc, LPC24XX_DOM,	tm->tm_mday);
	FUNC1(rtc, LPC24XX_DOY,	tm->tm_yday);
	FUNC1(rtc, LPC24XX_MONTH,	tm->tm_mon);
	FUNC1(rtc, LPC24XX_YEAR,	tm->tm_year);

	FUNC1(rtc, LPC24XX_CCR, LPC24XX_CLKEN | LPC178X_CCALEN);

	return 0;
}