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
struct tegra_rtc_info {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_RTC_INTR_MASK_SEC_ALARM0 ; 
 scalar_t__ TEGRA_RTC_REG_INTR_MASK ; 
 struct tegra_rtc_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enabled)
{
	struct tegra_rtc_info *info = FUNC0(dev);
	unsigned long flags;
	u32 status;

	FUNC4(dev);
	FUNC2(&info->lock, flags);

	/* read the original value, and OR in the flag */
	status = FUNC1(info->base + TEGRA_RTC_REG_INTR_MASK);
	if (enabled)
		status |= TEGRA_RTC_INTR_MASK_SEC_ALARM0; /* set it */
	else
		status &= ~TEGRA_RTC_INTR_MASK_SEC_ALARM0; /* clear it */

	FUNC5(status, info->base + TEGRA_RTC_REG_INTR_MASK);

	FUNC3(&info->lock, flags);

	return 0;
}