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
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {int* parents; } ;
struct gpio_chip {TYPE_1__ irq; } ;
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 int BCM2835_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_pinctrl*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 struct bcm2835_pinctrl* FUNC4 (struct gpio_chip*) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct gpio_chip* FUNC6 (struct irq_desc*) ; 
 int FUNC7 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct gpio_chip *chip = FUNC6(desc);
	struct bcm2835_pinctrl *pc = FUNC4(chip);
	struct irq_chip *host_chip = FUNC5(desc);
	int irq = FUNC7(desc);
	int group;
	int i;

	for (i = 0; i < BCM2835_NUM_IRQS; i++) {
		if (chip->irq.parents[i] == irq) {
			group = i;
			break;
		}
	}
	/* This should not happen, every IRQ has a bank */
	if (i == BCM2835_NUM_IRQS)
		FUNC0();

	FUNC2(host_chip, desc);

	switch (group) {
	case 0: /* IRQ0 covers GPIOs 0-27 */
		FUNC1(pc, 0, 0x0fffffff);
		break;
	case 1: /* IRQ1 covers GPIOs 28-45 */
		FUNC1(pc, 0, 0xf0000000);
		FUNC1(pc, 1, 0x00003fff);
		break;
	case 2: /* IRQ2 covers GPIOs 46-53 */
		FUNC1(pc, 1, 0x003fc000);
		break;
	}

	FUNC3(host_chip, desc);
}