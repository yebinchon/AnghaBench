#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct nsp_pinctrl {int /*<<< orphan*/  lock; int /*<<< orphan*/  base0; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {int* drv_data; } ;

/* Variables and functions */
 struct nsp_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctrl_dev,
				  struct pinctrl_gpio_range *range,
				  unsigned int pin)
{
	struct nsp_pinctrl *pinctrl = FUNC0(pctrl_dev);
	u32 *gpio_select = pctrl_dev->desc->pins[pin].drv_data;
	u32 val;
	unsigned long flags;

	FUNC2(&pinctrl->lock, flags);
	val = FUNC1(pinctrl->base0);
	if ((val & (1 << pin)) == (*gpio_select << pin)) {
		val &= ~(1 << pin);
		if (!(*gpio_select))
			val |= (1 << pin);
		FUNC4(val, pinctrl->base0);
	}
	FUNC3(&pinctrl->lock, flags);
}