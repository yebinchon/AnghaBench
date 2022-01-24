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
struct rt9455_info {int /*<<< orphan*/  batt_presence_work; int /*<<< orphan*/  max_charging_time_work; int /*<<< orphan*/ * regmap_fields; int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 size_t F_BATAB ; 
 size_t F_BATABM ; 
 size_t F_CHRCHGIM ; 
 size_t F_CHTERMIM ; 
 size_t F_TSDI ; 
 size_t F_VINOVPI ; 
 unsigned int FUNC0 (size_t) ; 
 int HZ ; 
 int RT9455_BATT_PRESENCE_DELAY ; 
 int /*<<< orphan*/  RT9455_REG_IRQ1 ; 
 int /*<<< orphan*/  RT9455_REG_MASK1 ; 
 int /*<<< orphan*/  RT9455_REG_MASK2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC6(struct rt9455_info *info,
						  bool *_is_battery_absent,
						  bool *_alert_userspace)
{
	unsigned int irq1, mask1, mask2;
	struct device *dev = &info->client->dev;
	bool is_battery_absent = false;
	bool alert_userspace = false;
	int ret;

	ret = FUNC5(info->regmap, RT9455_REG_IRQ1, &irq1);
	if (ret) {
		FUNC2(dev, "Failed to read IRQ1 register\n");
		return ret;
	}

	ret = FUNC5(info->regmap, RT9455_REG_MASK1, &mask1);
	if (ret) {
		FUNC2(dev, "Failed to read MASK1 register\n");
		return ret;
	}

	if (irq1 & FUNC0(F_TSDI)) {
		FUNC2(dev, "Thermal shutdown fault occurred\n");
		alert_userspace = true;
	}

	if (irq1 & FUNC0(F_VINOVPI)) {
		FUNC2(dev, "Overvoltage input occurred\n");
		alert_userspace = true;
	}

	if (irq1 & FUNC0(F_BATAB)) {
		FUNC2(dev, "Battery absence occurred\n");
		is_battery_absent = true;
		alert_userspace = true;

		if ((mask1 & FUNC0(F_BATABM)) == 0) {
			ret = FUNC4(info->regmap_fields[F_BATABM],
						 0x01);
			if (ret) {
				FUNC2(dev, "Failed to mask BATAB interrupt\n");
				return ret;
			}
		}

		ret = FUNC5(info->regmap, RT9455_REG_MASK2, &mask2);
		if (ret) {
			FUNC2(dev, "Failed to read MASK2 register\n");
			return ret;
		}

		if (mask2 & FUNC0(F_CHTERMIM)) {
			ret = FUNC4(
				info->regmap_fields[F_CHTERMIM], 0x00);
			if (ret) {
				FUNC2(dev, "Failed to unmask CHTERMI interrupt\n");
				return ret;
			}
		}

		if (mask2 & FUNC0(F_CHRCHGIM)) {
			ret = FUNC4(
				info->regmap_fields[F_CHRCHGIM], 0x00);
			if (ret) {
				FUNC2(dev, "Failed to unmask CHRCHGI interrupt\n");
				return ret;
			}
		}

		/*
		 * When the battery is absent, max_charging_time_work is
		 * cancelled, since no charging is done.
		 */
		FUNC1(&info->max_charging_time_work);
		/*
		 * Since no interrupt is triggered when the battery is
		 * reconnected, max_charging_time_work is not rescheduled.
		 * Therefore, batt_presence_work is scheduled to check whether
		 * the battery is still absent or not.
		 */
		FUNC3(system_power_efficient_wq,
				   &info->batt_presence_work,
				   RT9455_BATT_PRESENCE_DELAY * HZ);
	}

	*_is_battery_absent = is_battery_absent;

	if (alert_userspace)
		*_alert_userspace = alert_userspace;

	return 0;
}