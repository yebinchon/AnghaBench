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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  irqflags; scalar_t__ membase; } ;
struct mvebu_uart {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 unsigned int CTRL_BRK_INT ; 
 unsigned int CTRL_RXFIFO_RST ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int CTRL_TXFIFO_RST ; 
 int STAT_BRK_ERR ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 size_t UART_IRQ_SUM ; 
 size_t UART_RX_IRQ ; 
 scalar_t__ UART_STAT ; 
 size_t UART_TX_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  mvebu_uart_isr ; 
 int /*<<< orphan*/  mvebu_uart_rx_isr ; 
 int /*<<< orphan*/  mvebu_uart_tx_isr ; 
 void* FUNC7 (scalar_t__) ; 
 struct mvebu_uart* FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct uart_port *port)
{
	struct mvebu_uart *mvuart = FUNC8(port);
	unsigned int ctl;
	int ret;

	FUNC10(CTRL_TXFIFO_RST | CTRL_RXFIFO_RST,
	       port->membase + FUNC1(port));
	FUNC9(1);

	/* Clear the error bits of state register before IRQ request */
	ret = FUNC7(port->membase + UART_STAT);
	ret |= STAT_BRK_ERR;
	FUNC10(ret, port->membase + UART_STAT);

	FUNC10(CTRL_BRK_INT, port->membase + FUNC1(port));

	ctl = FUNC7(port->membase + FUNC2(port));
	ctl |= FUNC0(port);
	FUNC10(ctl, port->membase + FUNC2(port));

	if (!mvuart->irq[UART_TX_IRQ]) {
		/* Old bindings with just one interrupt (UART0 only) */
		ret = FUNC6(port->dev, mvuart->irq[UART_IRQ_SUM],
				       mvebu_uart_isr, port->irqflags,
				       FUNC4(port->dev), port);
		if (ret) {
			FUNC3(port->dev, "unable to request IRQ %d\n",
				mvuart->irq[UART_IRQ_SUM]);
			return ret;
		}
	} else {
		/* New bindings with an IRQ for RX and TX (both UART) */
		ret = FUNC6(port->dev, mvuart->irq[UART_RX_IRQ],
				       mvebu_uart_rx_isr, port->irqflags,
				       FUNC4(port->dev), port);
		if (ret) {
			FUNC3(port->dev, "unable to request IRQ %d\n",
				mvuart->irq[UART_RX_IRQ]);
			return ret;
		}

		ret = FUNC6(port->dev, mvuart->irq[UART_TX_IRQ],
				       mvebu_uart_tx_isr, port->irqflags,
				       FUNC4(port->dev),
				       port);
		if (ret) {
			FUNC3(port->dev, "unable to request IRQ %d\n",
				mvuart->irq[UART_TX_IRQ]);
			FUNC5(port->dev, mvuart->irq[UART_RX_IRQ],
				      port);
			return ret;
		}
	}

	return 0;
}