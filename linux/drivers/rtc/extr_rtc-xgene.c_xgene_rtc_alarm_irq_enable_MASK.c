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
typedef  scalar_t__ u32 ;
struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_CCR ; 
 scalar_t__ RTC_CCR_IE ; 
 scalar_t__ RTC_CCR_MASK ; 
 struct xgene_rtc_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 enabled)
{
	struct xgene_rtc_dev *pdata = FUNC0(dev);
	u32 ccr;

	ccr = FUNC1(pdata->csr_base + RTC_CCR);
	if (enabled) {
		ccr &= ~RTC_CCR_MASK;
		ccr |= RTC_CCR_IE;
	} else {
		ccr &= ~RTC_CCR_IE;
		ccr |= RTC_CCR_MASK;
	}
	FUNC2(ccr, pdata->csr_base + RTC_CCR);

	return 0;
}