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
struct mxs_auart_port {int /*<<< orphan*/ * gpio_irq; int /*<<< orphan*/  gpios; int /*<<< orphan*/  flags; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef  enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MXS_AUART_RTSCTS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int UART_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mxs_auart_port *s, struct device *dev)
{
	enum mctrl_gpio_idx i;
	struct gpio_desc *gpiod;

	s->gpios = FUNC8(dev, 0);
	if (FUNC1(s->gpios))
		return FUNC2(s->gpios);

	/* Block (enabled before) DMA option if RTS or CTS is GPIO line */
	if (!FUNC3() || !FUNC0()) {
		if (FUNC10(MXS_AUART_RTSCTS, &s->flags))
			FUNC5(dev,
				 "DMA and flow control via gpio may cause some problems. DMA disabled!\n");
		FUNC4(MXS_AUART_RTSCTS, &s->flags);
	}

	for (i = 0; i < UART_GPIO_MAX; i++) {
		gpiod = FUNC9(s->gpios, i);
		if (gpiod && (FUNC6(gpiod) == 1))
			s->gpio_irq[i] = FUNC7(gpiod);
		else
			s->gpio_irq[i] = -EINVAL;
	}

	return 0;
}