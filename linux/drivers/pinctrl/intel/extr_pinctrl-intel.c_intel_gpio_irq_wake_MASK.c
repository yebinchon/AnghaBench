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
struct irq_data {int dummy; } ;
struct intel_pinctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_pinctrl* FUNC3 (struct gpio_chip*) ; 
 unsigned int FUNC4 (struct intel_pinctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gpio_chip* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int on)
{
	struct gpio_chip *gc = FUNC5(d);
	struct intel_pinctrl *pctrl = FUNC3(gc);
	unsigned int pin = FUNC4(pctrl, FUNC6(d), NULL, NULL);

	if (on)
		FUNC2(pctrl->irq);
	else
		FUNC1(pctrl->irq);

	FUNC0(pctrl->dev, "%sable wake for pin %u\n", on ? "en" : "dis", pin);
	return 0;
}