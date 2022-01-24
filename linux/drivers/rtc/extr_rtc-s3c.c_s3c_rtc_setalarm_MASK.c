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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_mday; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2410_ALMDATE ; 
 scalar_t__ S3C2410_ALMHOUR ; 
 scalar_t__ S3C2410_ALMMIN ; 
 scalar_t__ S3C2410_ALMMON ; 
 scalar_t__ S3C2410_ALMSEC ; 
 scalar_t__ S3C2410_RTCALM ; 
 unsigned int S3C2410_RTCALM_ALMEN ; 
 unsigned int S3C2410_RTCALM_DAYEN ; 
 unsigned int S3C2410_RTCALM_HOUREN ; 
 unsigned int S3C2410_RTCALM_MINEN ; 
 unsigned int S3C2410_RTCALM_MONEN ; 
 unsigned int S3C2410_RTCALM_SECEN ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,...) ; 
 struct s3c_rtc* FUNC2 (struct device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_rtc*) ; 
 int FUNC5 (struct s3c_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct s3c_rtc *info = FUNC2(dev);
	struct rtc_time *tm = &alrm->time;
	unsigned int alrm_en;
	int ret;

	FUNC1(dev, "s3c_rtc_setalarm: %d, %ptR\n", alrm->enabled, tm);

	ret = FUNC5(info);
	if (ret)
		return ret;

	alrm_en = FUNC3(info->base + S3C2410_RTCALM) & S3C2410_RTCALM_ALMEN;
	FUNC7(0x00, info->base + S3C2410_RTCALM);

	if (tm->tm_sec < 60 && tm->tm_sec >= 0) {
		alrm_en |= S3C2410_RTCALM_SECEN;
		FUNC7(FUNC0(tm->tm_sec), info->base + S3C2410_ALMSEC);
	}

	if (tm->tm_min < 60 && tm->tm_min >= 0) {
		alrm_en |= S3C2410_RTCALM_MINEN;
		FUNC7(FUNC0(tm->tm_min), info->base + S3C2410_ALMMIN);
	}

	if (tm->tm_hour < 24 && tm->tm_hour >= 0) {
		alrm_en |= S3C2410_RTCALM_HOUREN;
		FUNC7(FUNC0(tm->tm_hour), info->base + S3C2410_ALMHOUR);
	}

	if (tm->tm_mon < 12 && tm->tm_mon >= 0) {
		alrm_en |= S3C2410_RTCALM_MONEN;
		FUNC7(FUNC0(tm->tm_mon + 1), info->base + S3C2410_ALMMON);
	}

	if (tm->tm_mday <= 31 && tm->tm_mday >= 1) {
		alrm_en |= S3C2410_RTCALM_DAYEN;
		FUNC7(FUNC0(tm->tm_mday), info->base + S3C2410_ALMDATE);
	}

	FUNC1(dev, "setting S3C2410_RTCALM to %08x\n", alrm_en);

	FUNC7(alrm_en, info->base + S3C2410_RTCALM);

	FUNC6(dev, alrm->enabled);

	FUNC4(info);

	return 0;
}