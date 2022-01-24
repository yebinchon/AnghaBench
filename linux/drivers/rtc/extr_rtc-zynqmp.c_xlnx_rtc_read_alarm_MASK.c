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
struct xlnx_rtc_dev {scalar_t__ reg_base; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_ALRM ; 
 int RTC_INT_ALRM ; 
 scalar_t__ RTC_INT_MASK ; 
 struct xlnx_rtc_dev* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct xlnx_rtc_dev *xrtcdev = FUNC0(dev);

	FUNC2(FUNC1(xrtcdev->reg_base + RTC_ALRM), &alrm->time);
	alrm->enabled = FUNC1(xrtcdev->reg_base + RTC_INT_MASK) & RTC_INT_ALRM;

	return 0;
}