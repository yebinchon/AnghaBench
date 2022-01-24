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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_RTCDATE ; 
 scalar_t__ S3C2410_RTCHOUR ; 
 scalar_t__ S3C2410_RTCMIN ; 
 scalar_t__ S3C2410_RTCMON ; 
 scalar_t__ S3C2410_RTCSEC ; 
 scalar_t__ S3C2410_RTCYEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct s3c_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_rtc*) ; 
 int FUNC5 (struct s3c_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct s3c_rtc *info = FUNC3(dev);
	int year = tm->tm_year - 100;
	int ret;

	FUNC1(dev, "set time %ptR\n", tm);

	/* we get around y2k by simply not supporting it */

	if (year < 0 || year >= 100) {
		FUNC2(dev, "rtc only supports 100 years\n");
		return -EINVAL;
	}

	ret = FUNC5(info);
	if (ret)
		return ret;

	FUNC6(FUNC0(tm->tm_sec),  info->base + S3C2410_RTCSEC);
	FUNC6(FUNC0(tm->tm_min),  info->base + S3C2410_RTCMIN);
	FUNC6(FUNC0(tm->tm_hour), info->base + S3C2410_RTCHOUR);
	FUNC6(FUNC0(tm->tm_mday), info->base + S3C2410_RTCDATE);
	FUNC6(FUNC0(tm->tm_mon + 1), info->base + S3C2410_RTCMON);
	FUNC6(FUNC0(year), info->base + S3C2410_RTCYEAR);

	FUNC4(info);

	return 0;
}