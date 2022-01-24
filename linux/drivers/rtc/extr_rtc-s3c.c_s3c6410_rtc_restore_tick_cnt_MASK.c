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
struct s3c_rtc {int ticnt_en_save; scalar_t__ base; int /*<<< orphan*/  ticnt_save; } ;

/* Variables and functions */
 scalar_t__ S3C2410_RTCCON ; 
 scalar_t__ S3C2410_TICNT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct s3c_rtc *info)
{
	unsigned int con;

	FUNC1(info->ticnt_save, info->base + S3C2410_TICNT);
	if (info->ticnt_en_save) {
		con = FUNC0(info->base + S3C2410_RTCCON);
		FUNC2(con | info->ticnt_en_save, info->base + S3C2410_RTCCON);
	}
}