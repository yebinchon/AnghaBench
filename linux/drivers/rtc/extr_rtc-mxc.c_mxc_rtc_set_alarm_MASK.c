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
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct rtc_time {int dummy; } ;
struct rtc_plat_data {int /*<<< orphan*/  g_rtc_alarm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_ALM_BIT ; 
 struct rtc_plat_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct rtc_plat_data *pdata = FUNC0(dev);

	FUNC3(dev, &alrm->time);

	FUNC1(&pdata->g_rtc_alarm, &alrm->time, sizeof(struct rtc_time));
	FUNC2(dev, RTC_ALM_BIT, alrm->enabled);

	return 0;
}