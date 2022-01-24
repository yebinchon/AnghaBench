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
 scalar_t__ FTRTC010_RTC_DAYS ; 
 scalar_t__ FTRTC010_RTC_HOUR ; 
 scalar_t__ FTRTC010_RTC_MINUTE ; 
 scalar_t__ FTRTC010_RTC_RECORD ; 
 scalar_t__ FTRTC010_RTC_SECOND ; 
 struct ftrtc010_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct ftrtc010_rtc *rtc = FUNC0(dev);

	u32 days, hour, min, sec, offset;
	timeu64_t time;

	sec  = FUNC1(rtc->rtc_base + FTRTC010_RTC_SECOND);
	min  = FUNC1(rtc->rtc_base + FTRTC010_RTC_MINUTE);
	hour = FUNC1(rtc->rtc_base + FTRTC010_RTC_HOUR);
	days = FUNC1(rtc->rtc_base + FTRTC010_RTC_DAYS);
	offset = FUNC1(rtc->rtc_base + FTRTC010_RTC_RECORD);

	time = offset + days * 86400 + hour * 3600 + min * 60 + sec;

	FUNC2(time, tm);

	return 0;
}