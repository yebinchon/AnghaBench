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
typedef  int u8 ;
typedef  int u32 ;
struct sunxi_pinctrl {int membase; int /*<<< orphan*/  pctl_dev; TYPE_1__* desc; } ;
struct gpio_chip {unsigned int base; } ;
struct TYPE_2__ {scalar_t__ irq_read_needs_mux; } ;

/* Variables and functions */
 int DATA_PINS_MASK ; 
 int /*<<< orphan*/  SUN4I_FUNC_INPUT ; 
 int /*<<< orphan*/  SUN4I_FUNC_IRQ ; 
 struct sunxi_pinctrl* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (struct gpio_chip*,unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct sunxi_pinctrl *pctl = FUNC0(chip);
	u32 reg = FUNC4(offset);
	u8 index = FUNC3(offset);
	bool set_mux = pctl->desc->irq_read_needs_mux &&
		FUNC1(chip, offset);
	u32 pin = offset + chip->base;
	u32 val;

	if (set_mux)
		FUNC5(pctl->pctl_dev, pin, SUN4I_FUNC_INPUT);

	val = (FUNC2(pctl->membase + reg) >> index) & DATA_PINS_MASK;

	if (set_mux)
		FUNC5(pctl->pctl_dev, pin, SUN4I_FUNC_IRQ);

	return !!val;
}