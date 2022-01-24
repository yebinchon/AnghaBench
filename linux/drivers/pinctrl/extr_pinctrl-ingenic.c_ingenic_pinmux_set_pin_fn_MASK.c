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
struct ingenic_pinctrl {scalar_t__ version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MSK ; 
 scalar_t__ ID_JZ4760 ; 
 scalar_t__ ID_X1000 ; 
 int /*<<< orphan*/  JZ4740_GPIO_FUNC ; 
 int /*<<< orphan*/  JZ4740_GPIO_SELECT ; 
 int /*<<< orphan*/  JZ4740_GPIO_TRIG ; 
 int /*<<< orphan*/  JZ4760_GPIO_INT ; 
 int /*<<< orphan*/  JZ4760_GPIO_PAT0 ; 
 int /*<<< orphan*/  JZ4760_GPIO_PAT1 ; 
 int PINS_PER_GPIO_CHIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_pinctrl*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ingenic_pinctrl*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ingenic_pinctrl*,int) ; 

__attribute__((used)) static int FUNC4(struct ingenic_pinctrl *jzpc,
		int pin, int func)
{
	unsigned int idx = pin % PINS_PER_GPIO_CHIP;
	unsigned int offt = pin / PINS_PER_GPIO_CHIP;

	FUNC0(jzpc->dev, "set pin P%c%u to function %u\n",
			'A' + offt, idx, func);

	if (jzpc->version >= ID_X1000) {
		FUNC2(jzpc, pin, JZ4760_GPIO_INT, false);
		FUNC2(jzpc, pin, GPIO_MSK, false);
		FUNC2(jzpc, pin, JZ4760_GPIO_PAT1, func & 0x2);
		FUNC2(jzpc, pin, JZ4760_GPIO_PAT0, func & 0x1);
		FUNC3(jzpc, pin);
	} else if (jzpc->version >= ID_JZ4760) {
		FUNC1(jzpc, pin, JZ4760_GPIO_INT, false);
		FUNC1(jzpc, pin, GPIO_MSK, false);
		FUNC1(jzpc, pin, JZ4760_GPIO_PAT1, func & 0x2);
		FUNC1(jzpc, pin, JZ4760_GPIO_PAT0, func & 0x1);
	} else {
		FUNC1(jzpc, pin, JZ4740_GPIO_FUNC, true);
		FUNC1(jzpc, pin, JZ4740_GPIO_TRIG, func & 0x2);
		FUNC1(jzpc, pin, JZ4740_GPIO_SELECT, func > 0);
	}

	return 0;
}