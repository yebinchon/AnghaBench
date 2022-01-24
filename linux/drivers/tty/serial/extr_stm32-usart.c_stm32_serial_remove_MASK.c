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
struct uart_port {int dummy; } ;
struct stm32_usart_offsets {int /*<<< orphan*/  cr3; } ;
struct stm32_port {scalar_t__ wakeirq; int /*<<< orphan*/  clk; scalar_t__ tx_dma_buf; int /*<<< orphan*/  tx_buf; scalar_t__ tx_ch; scalar_t__ rx_dma_buf; int /*<<< orphan*/  rx_buf; scalar_t__ rx_ch; TYPE_1__* info; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_BUF_L ; 
 int /*<<< orphan*/  TX_BUF_L ; 
 int /*<<< orphan*/  USART_CR3_DMAR ; 
 int /*<<< orphan*/  USART_CR3_DMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct uart_port* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32_usart_driver ; 
 struct stm32_port* FUNC10 (struct uart_port*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct uart_port *port = FUNC5(pdev);
	struct stm32_port *stm32_port = FUNC10(port);
	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
	int err;

	FUNC7(&pdev->dev);

	FUNC9(port, ofs->cr3, USART_CR3_DMAR);

	if (stm32_port->rx_ch)
		FUNC4(stm32_port->rx_ch);

	if (stm32_port->rx_dma_buf)
		FUNC3(&pdev->dev,
				  RX_BUF_L, stm32_port->rx_buf,
				  stm32_port->rx_dma_buf);

	FUNC9(port, ofs->cr3, USART_CR3_DMAT);

	if (stm32_port->tx_ch)
		FUNC4(stm32_port->tx_ch);

	if (stm32_port->tx_dma_buf)
		FUNC3(&pdev->dev,
				  TX_BUF_L, stm32_port->tx_buf,
				  stm32_port->tx_dma_buf);

	if (stm32_port->wakeirq > 0) {
		FUNC1(&pdev->dev);
		FUNC2(&pdev->dev, false);
	}

	FUNC0(stm32_port->clk);

	err = FUNC11(&stm32_usart_driver, port);

	FUNC6(&pdev->dev);
	FUNC8(&pdev->dev);

	return err;
}