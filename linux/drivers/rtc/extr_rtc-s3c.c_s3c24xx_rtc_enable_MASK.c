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
struct s3c_rtc {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ S3C2410_RTCCON ; 
 unsigned int S3C2410_RTCCON_CLKRST ; 
 unsigned int S3C2410_RTCCON_CNTSEL ; 
 unsigned int S3C2410_RTCCON_RTCEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct s3c_rtc *info)
{
	unsigned int con, tmp;

	con = FUNC1(info->base + S3C2410_RTCCON);
	/* re-enable the device, and check it is ok */
	if ((con & S3C2410_RTCCON_RTCEN) == 0) {
		FUNC0(info->dev, "rtc disabled, re-enabling\n");

		tmp = FUNC1(info->base + S3C2410_RTCCON);
		FUNC2(tmp | S3C2410_RTCCON_RTCEN, info->base + S3C2410_RTCCON);
	}

	if (con & S3C2410_RTCCON_CNTSEL) {
		FUNC0(info->dev, "removing RTCCON_CNTSEL\n");

		tmp = FUNC1(info->base + S3C2410_RTCCON);
		FUNC2(tmp & ~S3C2410_RTCCON_CNTSEL,
		       info->base + S3C2410_RTCCON);
	}

	if (con & S3C2410_RTCCON_CLKRST) {
		FUNC0(info->dev, "removing RTCCON_CLKRST\n");

		tmp = FUNC1(info->base + S3C2410_RTCCON);
		FUNC2(tmp & ~S3C2410_RTCCON_CLKRST,
		       info->base + S3C2410_RTCCON);
	}
}