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
struct mxc_rtc_data {int /*<<< orphan*/  clk; scalar_t__ ioaddr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SRTC_LPSCMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mxc_rtc_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct mxc_rtc_data *pdata = FUNC2(dev);
	const int clk_failed = FUNC1(pdata->clk);

	if (!clk_failed) {
		const time64_t now = FUNC3(pdata->ioaddr + SRTC_LPSCMR);

		FUNC4(now, tm);
		FUNC0(pdata->clk);
		return 0;
	}
	return clk_failed;
}