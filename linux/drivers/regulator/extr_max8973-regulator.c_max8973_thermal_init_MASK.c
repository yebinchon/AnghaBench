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
struct thermal_zone_device {int dummy; } ;
struct max8973_chip {scalar_t__ id; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 scalar_t__ MAX77621 ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct max8973_chip*) ; 
 struct thermal_zone_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct max8973_chip*,int /*<<< orphan*/ *) ; 
 struct irq_data* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  max77621_tz_ops ; 
 int /*<<< orphan*/  max8973_thermal_irq ; 

__attribute__((used)) static int FUNC8(struct max8973_chip *mchip)
{
	struct thermal_zone_device *tzd;
	struct irq_data *irq_data;
	unsigned long irq_flags = 0;
	int ret;

	if (mchip->id != MAX77621)
		return 0;

	tzd = FUNC5(mchip->dev, 0, mchip,
						   &max77621_tz_ops);
	if (FUNC0(tzd)) {
		ret = FUNC1(tzd);
		FUNC2(mchip->dev, "Failed to register thermal sensor: %d\n",
			ret);
		return ret;
	}

	if (mchip->irq <= 0)
		return 0;

	irq_data = FUNC6(mchip->irq);
	if (irq_data)
		irq_flags = FUNC7(irq_data);

	ret = FUNC4(mchip->dev, mchip->irq, NULL,
					max8973_thermal_irq,
					IRQF_ONESHOT | IRQF_SHARED | irq_flags,
					FUNC3(mchip->dev), mchip);
	if (ret < 0) {
		FUNC2(mchip->dev, "Failed to request irq %d, %d\n",
			mchip->irq, ret);
		return ret;
	}

	return 0;
}