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
struct mctrl_gpios {struct gpio_desc** gpio; } ;
struct gpio_desc {int dummy; } ;
typedef  enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {unsigned int mctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int UART_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct gpio_desc**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* mctrl_gpios_desc ; 
 int /*<<< orphan*/  values ; 

void FUNC4(struct mctrl_gpios *gpios, unsigned int mctrl)
{
	enum mctrl_gpio_idx i;
	struct gpio_desc *desc_array[UART_GPIO_MAX];
	FUNC0(values, UART_GPIO_MAX);
	unsigned int count = 0;

	if (gpios == NULL)
		return;

	for (i = 0; i < UART_GPIO_MAX; i++)
		if (gpios->gpio[i] && FUNC3(i)) {
			desc_array[count] = gpios->gpio[i];
			FUNC1(count, values,
				     mctrl & mctrl_gpios_desc[i].mctrl);
			count++;
		}
	FUNC2(count, desc_array, NULL, values);
}