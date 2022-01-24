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
struct ltc3676 {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * regulators; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LTC3676_CLIRQ ; 
 int /*<<< orphan*/  LTC3676_IRQSTAT ; 
 unsigned int LTC3676_IRQSTAT_THERMAL_WARN ; 
 unsigned int LTC3676_IRQSTAT_UNDERVOLT_WARN ; 
 unsigned int LTC3676_NUM_REGULATORS ; 
 unsigned int REGULATOR_EVENT_OVER_TEMP ; 
 unsigned int REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct ltc3676 *ltc3676 = dev_id;
	struct device *dev = ltc3676->dev;
	unsigned int i, irqstat, event;

	FUNC3(ltc3676->regmap, LTC3676_IRQSTAT, &irqstat);

	FUNC0(dev, "irq%d irqstat=0x%02x\n", irq, irqstat);
	if (irqstat & LTC3676_IRQSTAT_THERMAL_WARN) {
		FUNC2(dev, "Over-temperature Warning\n");
		event = REGULATOR_EVENT_OVER_TEMP;
		for (i = 0; i < LTC3676_NUM_REGULATORS; i++) {
			FUNC5(ltc3676->regulators[i]);
			FUNC6(ltc3676->regulators[i],
						      event, NULL);
			FUNC7(ltc3676->regulators[i]);
		}
	}

	if (irqstat & LTC3676_IRQSTAT_UNDERVOLT_WARN) {
		FUNC1(dev, "Undervoltage Warning\n");
		event = REGULATOR_EVENT_UNDER_VOLTAGE;
		for (i = 0; i < LTC3676_NUM_REGULATORS; i++) {
			FUNC5(ltc3676->regulators[i]);
			FUNC6(ltc3676->regulators[i],
						      event, NULL);
			FUNC7(ltc3676->regulators[i]);
		}
	}

	/* Clear warning condition */
	FUNC4(ltc3676->regmap, LTC3676_CLIRQ, 0);

	return IRQ_HANDLED;
}