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
struct ingenic_pinctrl {scalar_t__ version; } ;
struct ingenic_gpio_chip {struct ingenic_pinctrl* jzpc; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 scalar_t__ ID_JZ4760 ; 
 int /*<<< orphan*/  JZ4740_GPIO_DIR ; 
 int /*<<< orphan*/  JZ4740_GPIO_SELECT ; 
 int /*<<< orphan*/  JZ4760_GPIO_PAT1 ; 
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct ingenic_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned int offset)
{
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);
	struct ingenic_pinctrl *jzpc = jzgc->jzpc;
	unsigned int pin = gc->base + offset;

	if (jzpc->version >= ID_JZ4760)
		return FUNC1(jzpc, pin, JZ4760_GPIO_PAT1);

	if (FUNC1(jzpc, pin, JZ4740_GPIO_SELECT))
		return true;

	return !FUNC1(jzpc, pin, JZ4740_GPIO_DIR);
}