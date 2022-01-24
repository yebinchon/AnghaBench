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
typedef  int /*<<< orphan*/  u32 ;
struct sa1100_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  rtsr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSR_ALE ; 
 struct sa1100_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int enabled)
{
	u32 rtsr;
	struct sa1100_rtc *info = FUNC0(dev);

	FUNC2(&info->lock);
	rtsr = FUNC1(info->rtsr);
	if (enabled)
		rtsr |= RTSR_ALE;
	else
		rtsr &= ~RTSR_ALE;
	FUNC4(rtsr, info->rtsr);
	FUNC3(&info->lock);
	return 0;
}