#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct thermal_zone_device {int dummy; } ;
struct regmap {int dummy; } ;
struct pmic_thermal_data {int num_maps; TYPE_3__* maps; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {struct regmap* regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {int num_trips; int /*<<< orphan*/  handle; TYPE_2__* trip_config; } ;
struct TYPE_6__ {int irq_mask; int /*<<< orphan*/  evt_stat; int /*<<< orphan*/  irq_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 struct intel_soc_pmic* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct platform_device*) ; 
 scalar_t__ FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thermal_zone_device*,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct platform_device *pdev = data;
	struct thermal_zone_device *tzd;
	struct pmic_thermal_data *td;
	struct intel_soc_pmic *pmic;
	struct regmap *regmap;
	u8 reg_val, mask, irq_stat;
	u16 reg, evt_stat_reg;
	int i, j, ret;

	pmic = FUNC1(pdev->dev.parent);
	regmap = pmic->regmap;
	td = (struct pmic_thermal_data *)
		FUNC2(pdev)->driver_data;

	/* Resolve thermal irqs */
	for (i = 0; i < td->num_maps; i++) {
		for (j = 0; j < td->maps[i].num_trips; j++) {
			reg = td->maps[i].trip_config[j].irq_reg;
			mask = td->maps[i].trip_config[j].irq_mask;
			/*
			 * Read the irq register to resolve whether the
			 * interrupt was triggered for this sensor
			 */
			if (FUNC3(regmap, reg, &ret))
				return IRQ_HANDLED;

			reg_val = (u8)ret;
			irq_stat = ((u8)ret & mask);

			if (!irq_stat)
				continue;

			/*
			 * Read the status register to find out what
			 * event occurred i.e a high or a low
			 */
			evt_stat_reg = td->maps[i].trip_config[j].evt_stat;
			if (FUNC3(regmap, evt_stat_reg, &ret))
				return IRQ_HANDLED;

			tzd = FUNC6(td->maps[i].handle);
			if (!FUNC0(tzd))
				FUNC5(tzd,
						THERMAL_EVENT_UNSPECIFIED);

			/* Clear the appropriate irq */
			FUNC4(regmap, reg, reg_val & mask);
		}
	}

	return IRQ_HANDLED;
}