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
struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_CLR ; 
 struct xgene_rtc_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct xgene_rtc_dev *pdata = FUNC0(dev);

	/*
	 * NOTE: After the following write, the RTC_CCVR is only reflected
	 *       after the update cycle of 1 seconds.
	 */
	FUNC3((u32)FUNC2(tm), pdata->csr_base + RTC_CLR);
	FUNC1(pdata->csr_base + RTC_CLR); /* Force a barrier */

	return 0;
}