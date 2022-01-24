#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct bd70528_rtc {TYPE_1__* mfd; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int BD70528_MASK_ALM_EN ; 
 int /*<<< orphan*/  BD70528_REG_RTC_ALM_MASK ; 
 int FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct bd70528_rtc* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enabled)
{
	int ret;
	unsigned int enableval = BD70528_MASK_ALM_EN;
	struct bd70528_rtc *r = FUNC4(dev);

	if (enabled)
		enableval = 0;

	FUNC1(r->mfd);
	ret = FUNC0(r->mfd, enabled, NULL);
	if (ret) {
		FUNC3(dev, "Failed to change wake state\n");
		goto out_unlock;
	}
	ret = FUNC5(r->mfd->regmap, BD70528_REG_RTC_ALM_MASK,
				 BD70528_MASK_ALM_EN, enableval);
	if (ret)
		FUNC3(dev, "Failed to change alarm state\n");

out_unlock:
	FUNC2(r->mfd);
	return ret;
}