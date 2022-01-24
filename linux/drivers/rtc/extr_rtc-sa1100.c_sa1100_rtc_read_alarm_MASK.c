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
typedef  int u32 ;
struct sa1100_rtc {int /*<<< orphan*/  rtsr; } ;
struct rtc_wkalrm {int enabled; int pending; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RTSR_AL ; 
 int RTSR_ALE ; 
 struct sa1100_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_wkalrm *alrm)
{
	u32	rtsr;
	struct sa1100_rtc *info = FUNC0(dev);

	rtsr = FUNC1(info->rtsr);
	alrm->enabled = (rtsr & RTSR_ALE) ? 1 : 0;
	alrm->pending = (rtsr & RTSR_AL) ? 1 : 0;
	return 0;
}