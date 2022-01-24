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
typedef  scalar_t__ time64_t ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct mxc_rtc_data {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SRTC_LPSAR ; 
 scalar_t__ SRTC_LPSR ; 
 int /*<<< orphan*/  SRTC_LPSR_ALP ; 
 struct mxc_rtc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_rtc_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mxc_rtc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mxc_rtc_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	const time64_t time = FUNC5(&alrm->time);
	struct mxc_rtc_data *pdata = FUNC0(dev);
	int ret = FUNC2(pdata);

	if (ret)
		return ret;

	FUNC6((u32)time, pdata->ioaddr + SRTC_LPSAR);

	/* clear alarm interrupt status bit */
	FUNC6(SRTC_LPSR_ALP, pdata->ioaddr + SRTC_LPSR);
	FUNC3(dev, pdata->ioaddr);

	FUNC1(pdata, alrm->enabled);
	FUNC3(dev, pdata->ioaddr);
	FUNC4(pdata);
	return ret;
}