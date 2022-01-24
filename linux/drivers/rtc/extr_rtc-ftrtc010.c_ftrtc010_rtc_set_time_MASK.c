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
typedef  int u32 ;
typedef  int timeu64_t ;
struct rtc_time {int dummy; } ;
struct ftrtc010_rtc {scalar_t__ rtc_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FTRTC010_RTC_CR ; 
 scalar_t__ FTRTC010_RTC_DAYS ; 
 scalar_t__ FTRTC010_RTC_HOUR ; 
 scalar_t__ FTRTC010_RTC_MINUTE ; 
 scalar_t__ FTRTC010_RTC_RECORD ; 
 scalar_t__ FTRTC010_RTC_SECOND ; 
 struct ftrtc010_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct ftrtc010_rtc *rtc = FUNC0(dev);
	u32 sec, min, hour, day, offset;
	timeu64_t time;

	time = FUNC2(tm);

	sec = FUNC1(rtc->rtc_base + FTRTC010_RTC_SECOND);
	min = FUNC1(rtc->rtc_base + FTRTC010_RTC_MINUTE);
	hour = FUNC1(rtc->rtc_base + FTRTC010_RTC_HOUR);
	day = FUNC1(rtc->rtc_base + FTRTC010_RTC_DAYS);

	offset = time - (day * 86400 + hour * 3600 + min * 60 + sec);

	FUNC3(offset, rtc->rtc_base + FTRTC010_RTC_RECORD);
	FUNC3(0x01, rtc->rtc_base + FTRTC010_RTC_CR);

	return 0;
}