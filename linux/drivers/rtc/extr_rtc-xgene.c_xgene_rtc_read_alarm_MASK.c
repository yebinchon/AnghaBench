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
struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_CCR ; 
 int RTC_CCR_IE ; 
 struct xgene_rtc_dev* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct xgene_rtc_dev *pdata = FUNC0(dev);

	/* If possible, CMR should be read here */
	FUNC2(0, &alrm->time);
	alrm->enabled = FUNC1(pdata->csr_base + RTC_CCR) & RTC_CCR_IE;

	return 0;
}