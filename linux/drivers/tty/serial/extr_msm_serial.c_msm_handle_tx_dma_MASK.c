#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct msm_dma {unsigned int count; int /*<<< orphan*/  dir; int /*<<< orphan*/  phys; int /*<<< orphan*/  chan; int /*<<< orphan*/  enable_bit; int /*<<< orphan*/  cookie; TYPE_2__* desc; } ;
struct msm_port {scalar_t__ is_uartdm; int /*<<< orphan*/  imr; struct msm_dma tx_dma; struct uart_port uart; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {struct msm_port* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_FENCE ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 scalar_t__ UARTDM_1P3 ; 
 scalar_t__ UARTDM_1P4 ; 
 int /*<<< orphan*/  UARTDM_DMEN ; 
 int /*<<< orphan*/  UART_IMR ; 
 int /*<<< orphan*/  UART_IMR_TXLEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  msm_complete_tx_dma ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct msm_port *msm_port, unsigned int count)
{
	struct circ_buf *xmit = &msm_port->uart.state->xmit;
	struct uart_port *port = &msm_port->uart;
	struct msm_dma *dma = &msm_port->tx_dma;
	void *cpu_addr;
	int ret;
	u32 val;

	cpu_addr = &xmit->buf[xmit->tail];

	dma->phys = FUNC1(port->dev, cpu_addr, count, dma->dir);
	ret = FUNC2(port->dev, dma->phys);
	if (ret)
		return ret;

	dma->desc = FUNC5(dma->chan, dma->phys,
						count, DMA_MEM_TO_DEV,
						DMA_PREP_INTERRUPT |
						DMA_PREP_FENCE);
	if (!dma->desc) {
		ret = -EIO;
		goto unmap;
	}

	dma->desc->callback = msm_complete_tx_dma;
	dma->desc->callback_param = msm_port;

	dma->cookie = FUNC6(dma->desc);
	ret = FUNC3(dma->cookie);
	if (ret)
		goto unmap;

	/*
	 * Using DMA complete for Tx FIFO reload, no need for
	 * "Tx FIFO below watermark" one, disable it
	 */
	msm_port->imr &= ~UART_IMR_TXLEV;
	FUNC9(port, msm_port->imr, UART_IMR);

	dma->count = count;

	val = FUNC7(port, UARTDM_DMEN);
	val |= dma->enable_bit;

	if (msm_port->is_uartdm < UARTDM_1P4)
		FUNC9(port, val, UARTDM_DMEN);

	FUNC8(port, count);

	if (msm_port->is_uartdm > UARTDM_1P3)
		FUNC9(port, val, UARTDM_DMEN);

	FUNC0(dma->chan);
	return 0;
unmap:
	FUNC4(port->dev, dma->phys, count, dma->dir);
	return ret;
}