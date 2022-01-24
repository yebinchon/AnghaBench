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
struct ltc3589 {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * regulators; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LTC3589_CLIRQ ; 
 int /*<<< orphan*/  LTC3589_IRQSTAT ; 
 unsigned int LTC3589_IRQSTAT_THERMAL_WARN ; 
 unsigned int LTC3589_IRQSTAT_UNDERVOLT_WARN ; 
 unsigned int LTC3589_NUM_REGULATORS ; 
 unsigned int REGULATOR_EVENT_OVER_TEMP ; 
 unsigned int REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct ltc3589 *ltc3589 = dev_id;
	unsigned int i, irqstat, event;

	FUNC0(ltc3589->regmap, LTC3589_IRQSTAT, &irqstat);

	if (irqstat & LTC3589_IRQSTAT_THERMAL_WARN) {
		event = REGULATOR_EVENT_OVER_TEMP;
		for (i = 0; i < LTC3589_NUM_REGULATORS; i++) {
		        FUNC2(ltc3589->regulators[i]);
			FUNC3(ltc3589->regulators[i],
						      event, NULL);
		        FUNC4(ltc3589->regulators[i]);
		}
	}

	if (irqstat & LTC3589_IRQSTAT_UNDERVOLT_WARN) {
		event = REGULATOR_EVENT_UNDER_VOLTAGE;
		for (i = 0; i < LTC3589_NUM_REGULATORS; i++) {
		        FUNC2(ltc3589->regulators[i]);
			FUNC3(ltc3589->regulators[i],
						      event, NULL);
		        FUNC4(ltc3589->regulators[i]);
		}
	}

	/* Clear warning condition */
	FUNC1(ltc3589->regmap, LTC3589_CLIRQ, 0);

	return IRQ_HANDLED;
}