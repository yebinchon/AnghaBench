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
typedef  int /*<<< orphan*/  u32 ;
struct rtc_time {int /*<<< orphan*/  tm_yday; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC24XX_CTIME0 ; 
 int /*<<< orphan*/  LPC24XX_CTIME1 ; 
 int /*<<< orphan*/  LPC24XX_CTIME2 ; 
 struct lpc24xx_rtc* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpc24xx_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_time *tm)
{
	struct lpc24xx_rtc *rtc = FUNC8(dev);
	u32 ct0, ct1, ct2;

	ct0 = FUNC9(rtc, LPC24XX_CTIME0);
	ct1 = FUNC9(rtc, LPC24XX_CTIME1);
	ct2 = FUNC9(rtc, LPC24XX_CTIME2);

	tm->tm_sec  = FUNC3(ct0);
	tm->tm_min  = FUNC2(ct0);
	tm->tm_hour = FUNC1(ct0);
	tm->tm_wday = FUNC0(ct0);
	tm->tm_mon  = FUNC5(ct1);
	tm->tm_mday = FUNC4(ct1);
	tm->tm_year = FUNC6(ct1);
	tm->tm_yday = FUNC7(ct2);

	return 0;
}