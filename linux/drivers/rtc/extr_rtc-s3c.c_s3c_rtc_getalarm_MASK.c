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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_mday; int tm_year; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2410_ALMDATE ; 
 scalar_t__ S3C2410_ALMHOUR ; 
 scalar_t__ S3C2410_ALMMIN ; 
 scalar_t__ S3C2410_ALMMON ; 
 scalar_t__ S3C2410_ALMSEC ; 
 scalar_t__ S3C2410_ALMYEAR ; 
 scalar_t__ S3C2410_RTCALM ; 
 unsigned int S3C2410_RTCALM_ALMEN ; 
 unsigned int S3C2410_RTCALM_DAYEN ; 
 unsigned int S3C2410_RTCALM_HOUREN ; 
 unsigned int S3C2410_RTCALM_MINEN ; 
 unsigned int S3C2410_RTCALM_MONEN ; 
 unsigned int S3C2410_RTCALM_SECEN ; 
 unsigned int S3C2410_RTCALM_YEAREN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,struct rtc_time*) ; 
 struct s3c_rtc* FUNC2 (struct device*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_rtc*) ; 
 int FUNC5 (struct s3c_rtc*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct s3c_rtc *info = FUNC2(dev);
	struct rtc_time *alm_tm = &alrm->time;
	unsigned int alm_en;
	int ret;

	ret = FUNC5(info);
	if (ret)
		return ret;

	alm_tm->tm_sec  = FUNC3(info->base + S3C2410_ALMSEC);
	alm_tm->tm_min  = FUNC3(info->base + S3C2410_ALMMIN);
	alm_tm->tm_hour = FUNC3(info->base + S3C2410_ALMHOUR);
	alm_tm->tm_mon  = FUNC3(info->base + S3C2410_ALMMON);
	alm_tm->tm_mday = FUNC3(info->base + S3C2410_ALMDATE);
	alm_tm->tm_year = FUNC3(info->base + S3C2410_ALMYEAR);

	alm_en = FUNC3(info->base + S3C2410_RTCALM);

	FUNC4(info);

	alrm->enabled = (alm_en & S3C2410_RTCALM_ALMEN) ? 1 : 0;

	FUNC1(dev, "read alarm %d, %ptR\n", alm_en, alm_tm);

	/* decode the alarm enable field */
	if (alm_en & S3C2410_RTCALM_SECEN)
		alm_tm->tm_sec = FUNC0(alm_tm->tm_sec);

	if (alm_en & S3C2410_RTCALM_MINEN)
		alm_tm->tm_min = FUNC0(alm_tm->tm_min);

	if (alm_en & S3C2410_RTCALM_HOUREN)
		alm_tm->tm_hour = FUNC0(alm_tm->tm_hour);

	if (alm_en & S3C2410_RTCALM_DAYEN)
		alm_tm->tm_mday = FUNC0(alm_tm->tm_mday);

	if (alm_en & S3C2410_RTCALM_MONEN) {
		alm_tm->tm_mon = FUNC0(alm_tm->tm_mon);
		alm_tm->tm_mon -= 1;
	}

	if (alm_en & S3C2410_RTCALM_YEAREN)
		alm_tm->tm_year = FUNC0(alm_tm->tm_year);

	return 0;
}