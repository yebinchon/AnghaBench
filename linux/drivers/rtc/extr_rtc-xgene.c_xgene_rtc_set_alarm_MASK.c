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
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_CMR ; 
 struct xgene_rtc_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct xgene_rtc_dev *pdata = FUNC0(dev);

	FUNC2((u32)FUNC1(&alrm->time), pdata->csr_base + RTC_CMR);

	FUNC3(dev, alrm->enabled);

	return 0;
}