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
struct s3c_rtc {scalar_t__ base; } ;
struct rtc_time {scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2410_RTCDATE ; 
 scalar_t__ S3C2410_RTCHOUR ; 
 scalar_t__ S3C2410_RTCMIN ; 
 scalar_t__ S3C2410_RTCMON ; 
 scalar_t__ S3C2410_RTCSEC ; 
 scalar_t__ S3C2410_RTCYEAR ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct rtc_time*) ; 
 struct s3c_rtc* FUNC2 (struct device*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_rtc*) ; 
 int FUNC5 (struct s3c_rtc*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *rtc_tm)
{
	struct s3c_rtc *info = FUNC2(dev);
	unsigned int have_retried = 0;
	int ret;

	ret = FUNC5(info);
	if (ret)
		return ret;

retry_get_time:
	rtc_tm->tm_min  = FUNC3(info->base + S3C2410_RTCMIN);
	rtc_tm->tm_hour = FUNC3(info->base + S3C2410_RTCHOUR);
	rtc_tm->tm_mday = FUNC3(info->base + S3C2410_RTCDATE);
	rtc_tm->tm_mon  = FUNC3(info->base + S3C2410_RTCMON);
	rtc_tm->tm_year = FUNC3(info->base + S3C2410_RTCYEAR);
	rtc_tm->tm_sec  = FUNC3(info->base + S3C2410_RTCSEC);

	/* the only way to work out whether the system was mid-update
	 * when we read it is to check the second counter, and if it
	 * is zero, then we re-try the entire read
	 */

	if (rtc_tm->tm_sec == 0 && !have_retried) {
		have_retried = 1;
		goto retry_get_time;
	}

	rtc_tm->tm_sec = FUNC0(rtc_tm->tm_sec);
	rtc_tm->tm_min = FUNC0(rtc_tm->tm_min);
	rtc_tm->tm_hour = FUNC0(rtc_tm->tm_hour);
	rtc_tm->tm_mday = FUNC0(rtc_tm->tm_mday);
	rtc_tm->tm_mon = FUNC0(rtc_tm->tm_mon);
	rtc_tm->tm_year = FUNC0(rtc_tm->tm_year);

	FUNC4(info);

	rtc_tm->tm_year += 100;
	rtc_tm->tm_mon -= 1;

	FUNC1(dev, "read time %ptR\n", rtc_tm);
	return 0;
}