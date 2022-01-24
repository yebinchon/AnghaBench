#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {int enabled; scalar_t__ pending; TYPE_1__ time; } ;
struct rohm_regmap_dev {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
struct bd70528_rtc_alm {int alm_mask; int /*<<< orphan*/  data; } ;
struct bd70528_rtc {struct rohm_regmap_dev* mfd; } ;
typedef  int /*<<< orphan*/  alm ;

/* Variables and functions */
 int BD70528_MASK_ALM_EN ; 
 int /*<<< orphan*/  BD70528_REG_RTC_ALM_START ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct bd70528_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bd70528_rtc_alm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *a)
{
	struct bd70528_rtc_alm alm;
	int ret;
	struct bd70528_rtc *r = FUNC1(dev);
	struct rohm_regmap_dev *bd70528 = r->mfd;

	ret = FUNC2(bd70528->regmap, BD70528_REG_RTC_ALM_START,
			       &alm, sizeof(alm));
	if (ret) {
		FUNC0(dev, "Failed to read alarm regs\n");
		return ret;
	}

	FUNC3(&alm.data, &a->time);
	a->time.tm_mday = -1;
	a->time.tm_mon = -1;
	a->time.tm_year = -1;
	a->enabled = !(alm.alm_mask & BD70528_MASK_ALM_EN);
	a->pending = 0;

	return 0;
}