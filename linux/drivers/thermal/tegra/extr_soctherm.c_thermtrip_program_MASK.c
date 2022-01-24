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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_tsensor_group {int /*<<< orphan*/  thermtrip_any_en_mask; int /*<<< orphan*/  thermtrip_enable_mask; int /*<<< orphan*/  thermtrip_threshold_mask; } ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int thresh_grain; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ THERMCTL_THERMTRIP_CTL ; 
 struct tegra_soctherm* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			     const struct tegra_tsensor_group *sg,
			     int trip_temp)
{
	struct tegra_soctherm *ts = FUNC1(dev);
	int temp;
	u32 r;

	if (!sg || !sg->thermtrip_threshold_mask)
		return -EINVAL;

	temp = FUNC2(dev, trip_temp) / ts->soc->thresh_grain;

	r = FUNC3(ts->regs + THERMCTL_THERMTRIP_CTL);
	r = FUNC0(r, sg->thermtrip_threshold_mask, temp);
	r = FUNC0(r, sg->thermtrip_enable_mask, 1);
	r = FUNC0(r, sg->thermtrip_any_en_mask, 0);
	FUNC4(r, ts->regs + THERMCTL_THERMTRIP_CTL);

	return 0;
}