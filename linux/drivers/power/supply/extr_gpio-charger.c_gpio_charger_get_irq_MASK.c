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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  gpio_charger_irq ; 
 int FUNC3 (struct gpio_desc*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *dev_id,
				struct gpio_desc *gpio)
{
	int ret, irq = FUNC3(gpio);

	if (irq > 0) {
		ret = FUNC2(dev, irq, gpio_charger_irq,
						   IRQF_TRIGGER_RISING |
						   IRQF_TRIGGER_FALLING,
						   FUNC0(dev),
						   dev_id);
		if (ret < 0) {
			FUNC1(dev, "Failed to request irq: %d\n", ret);
			irq = 0;
		}
	}

	return irq;
}