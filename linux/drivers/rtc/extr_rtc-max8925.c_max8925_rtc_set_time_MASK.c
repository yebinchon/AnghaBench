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
struct rtc_time {int dummy; } ;
struct max8925_rtc_info {int /*<<< orphan*/  rtc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8925_RTC_SEC ; 
 int TIME_NUM ; 
 int FUNC0 (unsigned char*,struct rtc_time*,int) ; 
 struct max8925_rtc_info* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct max8925_rtc_info *info = FUNC1(dev);
	unsigned char buf[TIME_NUM];
	int ret;

	ret = FUNC0(buf, tm, TIME_NUM);
	if (ret < 0)
		goto out;
	ret = FUNC2(info->rtc, MAX8925_RTC_SEC, TIME_NUM, buf);
out:
	return ret;
}