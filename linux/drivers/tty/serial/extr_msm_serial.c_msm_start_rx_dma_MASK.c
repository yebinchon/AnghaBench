#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct uart_port {int /*<<< orphan*/  dev; } ;
struct msm_dma {int count; int enable_bit; int /*<<< orphan*/  dir; int /*<<< orphan*/  phys; int /*<<< orphan*/  chan; int /*<<< orphan*/  cookie; TYPE_1__* desc; int /*<<< orphan*/  virt; } ;
struct msm_port {int imr; scalar_t__ is_uartdm; struct uart_port uart; struct msm_dma rx_dma; } ;
struct TYPE_3__ {struct msm_port* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 scalar_t__ UARTDM_1P3 ; 
 scalar_t__ UARTDM_1P4 ; 
 int /*<<< orphan*/  UARTDM_DMEN ; 
 int /*<<< orphan*/  UARTDM_DMRX ; 
 int UARTDM_RX_SIZE ; 
 int /*<<< orphan*/  UART_CR ; 
 int UART_CR_CMD_RESET_STALE_INT ; 
 int UART_CR_CMD_STALE_EVENT_ENABLE ; 
 int /*<<< orphan*/  UART_IMR ; 
 int UART_IMR_RXLEV ; 
 int UART_IMR_RXSTALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  msm_complete_rx_dma ; 
 int FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct msm_port *msm_port)
{
	struct msm_dma *dma = &msm_port->rx_dma;
	struct uart_port *uart = &msm_port->uart;
	u32 val;
	int ret;

	if (!dma->chan)
		return;

	dma->phys = FUNC1(uart->dev, dma->virt,
				   UARTDM_RX_SIZE, dma->dir);
	ret = FUNC2(uart->dev, dma->phys);
	if (ret)
		return;

	dma->desc = FUNC5(dma->chan, dma->phys,
						UARTDM_RX_SIZE, DMA_DEV_TO_MEM,
						DMA_PREP_INTERRUPT);
	if (!dma->desc)
		goto unmap;

	dma->desc->callback = msm_complete_rx_dma;
	dma->desc->callback_param = msm_port;

	dma->cookie = FUNC6(dma->desc);
	ret = FUNC3(dma->cookie);
	if (ret)
		goto unmap;
	/*
	 * Using DMA for FIFO off-load, no need for "Rx FIFO over
	 * watermark" or "stale" interrupts, disable them
	 */
	msm_port->imr &= ~(UART_IMR_RXLEV | UART_IMR_RXSTALE);

	/*
	 * Well, when DMA is ADM3 engine(implied by <= UARTDM v1.3),
	 * we need RXSTALE to flush input DMA fifo to memory
	 */
	if (msm_port->is_uartdm < UARTDM_1P4)
		msm_port->imr |= UART_IMR_RXSTALE;

	FUNC8(uart, msm_port->imr, UART_IMR);

	dma->count = UARTDM_RX_SIZE;

	FUNC0(dma->chan);

	FUNC8(uart, UART_CR_CMD_RESET_STALE_INT, UART_CR);
	FUNC8(uart, UART_CR_CMD_STALE_EVENT_ENABLE, UART_CR);

	val = FUNC7(uart, UARTDM_DMEN);
	val |= dma->enable_bit;

	if (msm_port->is_uartdm < UARTDM_1P4)
		FUNC8(uart, val, UARTDM_DMEN);

	FUNC8(uart, UARTDM_RX_SIZE, UARTDM_DMRX);

	if (msm_port->is_uartdm > UARTDM_1P3)
		FUNC8(uart, val, UARTDM_DMEN);

	return;
unmap:
	FUNC4(uart->dev, dma->phys, UARTDM_RX_SIZE, dma->dir);
}