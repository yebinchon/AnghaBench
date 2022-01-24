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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct max8998_rtc_info {scalar_t__ lp3974_bug_workaround; int /*<<< orphan*/  rtc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8998_ALARM0_SEC ; 
 struct max8998_rtc_info* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct max8998_rtc_info*) ; 
 int FUNC3 (struct max8998_rtc_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct max8998_rtc_info *info = FUNC0(dev);
	u8 data[8];
	int ret;

	FUNC4(&alrm->time, data);

	ret = FUNC3(info);
	if (ret < 0)
		return ret;

	ret = FUNC1(info->rtc, MAX8998_ALARM0_SEC, 8, data);
	if (ret < 0)
		return ret;

	if (info->lp3974_bug_workaround)
		FUNC5(2000);

	if (alrm->enabled)
		ret = FUNC2(info);

	return ret;
}