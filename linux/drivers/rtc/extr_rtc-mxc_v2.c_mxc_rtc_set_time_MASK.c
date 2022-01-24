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
typedef  int /*<<< orphan*/  time64_t ;
struct rtc_time {int dummy; } ;
struct mxc_rtc_data {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SRTC_LPSCMR ; 
 struct mxc_rtc_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct mxc_rtc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__) ; 
 int FUNC3 (struct mxc_rtc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct mxc_rtc_data *pdata = FUNC0(dev);
	time64_t time = FUNC4(tm);
	int ret;

	ret = FUNC1(pdata);
	if (ret)
		return ret;

	FUNC5(time, pdata->ioaddr + SRTC_LPSCMR);
	FUNC2(dev, pdata->ioaddr);
	return FUNC3(pdata);
}