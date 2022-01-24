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
struct mctrl_gpios {int mctrl_on; int /*<<< orphan*/ * irq; int /*<<< orphan*/  mctrl_prev; } ;
typedef  enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;

/* Variables and functions */
 int UART_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mctrl_gpios*,int /*<<< orphan*/ *) ; 

void FUNC2(struct mctrl_gpios *gpios)
{
	enum mctrl_gpio_idx i;

	if (gpios == NULL)
		return;

	/* .enable_ms may be called multiple times */
	if (gpios->mctrl_on)
		return;

	gpios->mctrl_on = true;

	/* get initial status of modem lines GPIOs */
	FUNC1(gpios, &gpios->mctrl_prev);

	for (i = 0; i < UART_GPIO_MAX; ++i) {
		if (!gpios->irq[i])
			continue;

		FUNC0(gpios->irq[i]);
	}
}