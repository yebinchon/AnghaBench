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
struct rtc_time {int tm_year; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct da9052_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct da9052_rtc*,int) ; 
 int FUNC1 (struct da9052_rtc*,struct rtc_time*) ; 
 struct da9052_rtc* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	int ret;
	struct rtc_time *tm = &alrm->time;
	struct da9052_rtc *rtc = FUNC2(dev);

	/* DA9052 only has 6 bits for year - to represent 2000-2063 */
	if ((tm->tm_year < 100) || (tm->tm_year > 163))
		return -EINVAL;

	ret = FUNC0(rtc, 0);
	if (ret < 0)
		return ret;

	ret = FUNC1(rtc, tm);
	if (ret < 0)
		return ret;

	ret = FUNC0(rtc, 1);
	return ret;
}