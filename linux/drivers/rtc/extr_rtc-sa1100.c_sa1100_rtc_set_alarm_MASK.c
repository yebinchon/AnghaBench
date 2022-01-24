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
struct sa1100_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  rtsr; int /*<<< orphan*/  rtar; } ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long RTSR_AL ; 
 unsigned long RTSR_ALE ; 
 unsigned long RTSR_HZE ; 
 struct sa1100_rtc* FUNC0 (struct device*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct sa1100_rtc *info = FUNC0(dev);
	unsigned long time;
	int ret;

	FUNC3(&info->lock);
	ret = FUNC2(&alrm->time, &time);
	if (ret != 0)
		goto out;
	FUNC5(FUNC1(info->rtsr) &
		(RTSR_HZE | RTSR_ALE | RTSR_AL), info->rtsr);
	FUNC5(time, info->rtar);
	if (alrm->enabled)
		FUNC5(FUNC1(info->rtsr) | RTSR_ALE, info->rtsr);
	else
		FUNC5(FUNC1(info->rtsr) & ~RTSR_ALE, info->rtsr);
out:
	FUNC4(&info->lock);

	return ret;
}