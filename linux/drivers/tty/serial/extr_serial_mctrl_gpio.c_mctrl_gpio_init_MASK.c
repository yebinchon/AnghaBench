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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct mctrl_gpios {int* irq; int /*<<< orphan*/ * gpio; struct uart_port* port; } ;
typedef  enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct mctrl_gpios* FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 scalar_t__ FUNC1 (struct mctrl_gpios*) ; 
 int UART_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mctrl_gpios*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 struct mctrl_gpios* FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  mctrl_gpio_irq_handle ; 
 TYPE_1__* mctrl_gpios_desc ; 

struct mctrl_gpios *FUNC9(struct uart_port *port, unsigned int idx)
{
	struct mctrl_gpios *gpios;
	enum mctrl_gpio_idx i;

	gpios = FUNC8(port->dev, idx);
	if (FUNC1(gpios))
		return gpios;

	gpios->port = port;

	for (i = 0; i < UART_GPIO_MAX; ++i) {
		int ret;

		if (!gpios->gpio[i] || FUNC7(i))
			continue;

		ret = FUNC5(gpios->gpio[i]);
		if (ret <= 0) {
			FUNC2(port->dev,
				"failed to find corresponding irq for %s (idx=%d, err=%d)\n",
				mctrl_gpios_desc[i].name, idx, ret);
			return FUNC0(ret);
		}
		gpios->irq[i] = ret;

		/* irqs should only be enabled in .enable_ms */
		FUNC6(gpios->irq[i], IRQ_NOAUTOEN);

		ret = FUNC4(port->dev, gpios->irq[i],
				       mctrl_gpio_irq_handle,
				       IRQ_TYPE_EDGE_BOTH, FUNC3(port->dev),
				       gpios);
		if (ret) {
			/* alternatively implement polling */
			FUNC2(port->dev,
				"failed to request irq for %s (idx=%d, err=%d)\n",
				mctrl_gpios_desc[i].name, idx, ret);
			return FUNC0(ret);
		}
	}

	return gpios;
}