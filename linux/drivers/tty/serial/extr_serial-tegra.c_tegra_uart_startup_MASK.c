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
struct uart_port {int irq; int /*<<< orphan*/  dev; } ;
struct tegra_uart_port {int /*<<< orphan*/  use_tx_pio; int /*<<< orphan*/  use_rx_pio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_uart_port*) ; 
 int FUNC3 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_uart_port*,int) ; 
 int FUNC5 (struct tegra_uart_port*) ; 
 int /*<<< orphan*/  tegra_uart_isr ; 
 struct tegra_uart_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static int FUNC7(struct uart_port *u)
{
	struct tegra_uart_port *tup = FUNC6(u);
	int ret;

	if (!tup->use_tx_pio) {
		ret = FUNC3(tup, false);
		if (ret < 0) {
			FUNC0(u->dev, "Tx Dma allocation failed, err = %d\n",
				ret);
			return ret;
		}
	}

	if (!tup->use_rx_pio) {
		ret = FUNC3(tup, true);
		if (ret < 0) {
			FUNC0(u->dev, "Rx Dma allocation failed, err = %d\n",
				ret);
			goto fail_rx_dma;
		}
	}

	ret = FUNC5(tup);
	if (ret < 0) {
		FUNC0(u->dev, "Uart HW init failed, err = %d\n", ret);
		goto fail_hw_init;
	}

	ret = FUNC2(u->irq, tegra_uart_isr, 0,
				FUNC1(u->dev), tup);
	if (ret < 0) {
		FUNC0(u->dev, "Failed to register ISR for IRQ %d\n", u->irq);
		goto fail_hw_init;
	}
	return 0;

fail_hw_init:
	if (!tup->use_rx_pio)
		FUNC4(tup, true);
fail_rx_dma:
	if (!tup->use_tx_pio)
		FUNC4(tup, false);
	return ret;
}