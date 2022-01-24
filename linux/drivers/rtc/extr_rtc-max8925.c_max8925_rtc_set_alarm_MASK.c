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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct max8925_rtc_info {int /*<<< orphan*/  rtc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8925_ALARM0_CNTL ; 
 int /*<<< orphan*/  MAX8925_ALARM0_SEC ; 
 int TIME_NUM ; 
 int FUNC0 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 struct max8925_rtc_info* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct max8925_rtc_info *info = FUNC1(dev);
	unsigned char buf[TIME_NUM];
	int ret;

	ret = FUNC0(buf, &alrm->time, TIME_NUM);
	if (ret < 0)
		goto out;
	ret = FUNC2(info->rtc, MAX8925_ALARM0_SEC, TIME_NUM, buf);
	if (ret < 0)
		goto out;
	if (alrm->enabled)
		/* only enable alarm on year/month/day/hour/min/sec */
		ret = FUNC3(info->rtc, MAX8925_ALARM0_CNTL, 0x77);
	else
		ret = FUNC3(info->rtc, MAX8925_ALARM0_CNTL, 0x0);
out:
	return ret;
}