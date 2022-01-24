#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rv3028_data {int /*<<< orphan*/  regmap; TYPE_3__* rtc; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ enabled; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV3028_CTRL2 ; 
 int RV3028_CTRL2_AIE ; 
 int RV3028_CTRL2_UIE ; 
 int /*<<< orphan*/  RV3028_STATUS ; 
 int RV3028_STATUS_AF ; 
 int RV3028_STATUS_UF ; 
 struct rv3028_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int enabled)
{
	struct rv3028_data *rv3028 = FUNC0(dev);
	int ctrl = 0, ret;

	if (enabled) {
		if (rv3028->rtc->uie_rtctimer.enabled)
			ctrl |= RV3028_CTRL2_UIE;
		if (rv3028->rtc->aie_timer.enabled)
			ctrl |= RV3028_CTRL2_AIE;
	}

	ret = FUNC1(rv3028->regmap, RV3028_STATUS,
				 RV3028_STATUS_AF | RV3028_STATUS_UF, 0);
	if (ret)
		return ret;

	ret = FUNC1(rv3028->regmap, RV3028_CTRL2,
				 RV3028_CTRL2_UIE | RV3028_CTRL2_AIE, ctrl);
	if (ret)
		return ret;

	return 0;
}