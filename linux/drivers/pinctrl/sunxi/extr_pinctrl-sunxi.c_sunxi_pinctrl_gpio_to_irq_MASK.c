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
struct sunxi_pinctrl {int /*<<< orphan*/  domain; TYPE_1__* desc; } ;
struct sunxi_desc_function {unsigned int irqbank; unsigned int irqnum; } ;
struct gpio_chip {unsigned int ngpio; scalar_t__ base; int /*<<< orphan*/  label; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {unsigned int pin_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 unsigned int IRQ_PER_BANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct sunxi_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sunxi_desc_function* FUNC3 (struct sunxi_pinctrl*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct sunxi_pinctrl *pctl = FUNC1(chip);
	struct sunxi_desc_function *desc;
	unsigned pinnum = pctl->desc->pin_base + offset;
	unsigned irqnum;

	if (offset >= chip->ngpio)
		return -ENXIO;

	desc = FUNC3(pctl, pinnum, "irq");
	if (!desc)
		return -EINVAL;

	irqnum = desc->irqbank * IRQ_PER_BANK + desc->irqnum;

	FUNC0(chip->parent, "%s: request IRQ for GPIO %d, return %d\n",
		chip->label, offset + chip->base, irqnum);

	return FUNC2(pctl->domain, irqnum);
}