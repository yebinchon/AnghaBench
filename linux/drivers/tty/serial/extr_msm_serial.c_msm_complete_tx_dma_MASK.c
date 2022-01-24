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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {unsigned int tx; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct msm_dma {unsigned int count; int /*<<< orphan*/  enable_bit; int /*<<< orphan*/  dir; int /*<<< orphan*/  phys; int /*<<< orphan*/  cookie; int /*<<< orphan*/  chan; } ;
struct msm_port {scalar_t__ is_uartdm; int /*<<< orphan*/  imr; struct msm_dma tx_dma; struct uart_port uart; } ;
struct dma_tx_state {unsigned int residue; } ;
struct circ_buf {unsigned int tail; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ UARTDM_1P3 ; 
 int /*<<< orphan*/  UARTDM_DMEN ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_TX ; 
 int /*<<< orphan*/  UART_CR_TX_ENABLE ; 
 int /*<<< orphan*/  UART_IMR ; 
 int /*<<< orphan*/  UART_IMR_TXLEV ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 

__attribute__((used)) static void FUNC9(void *args)
{
	struct msm_port *msm_port = args;
	struct uart_port *port = &msm_port->uart;
	struct circ_buf *xmit = &port->state->xmit;
	struct msm_dma *dma = &msm_port->tx_dma;
	struct dma_tx_state state;
	enum dma_status status;
	unsigned long flags;
	unsigned int count;
	u32 val;

	FUNC5(&port->lock, flags);

	/* Already stopped */
	if (!dma->count)
		goto done;

	status = FUNC1(dma->chan, dma->cookie, &state);

	FUNC0(port->dev, dma->phys, dma->count, dma->dir);

	val = FUNC3(port, UARTDM_DMEN);
	val &= ~dma->enable_bit;
	FUNC4(port, val, UARTDM_DMEN);

	if (msm_port->is_uartdm > UARTDM_1P3) {
		FUNC4(port, UART_CR_CMD_RESET_TX, UART_CR);
		FUNC4(port, UART_CR_TX_ENABLE, UART_CR);
	}

	count = dma->count - state.residue;
	port->icount.tx += count;
	dma->count = 0;

	xmit->tail += count;
	xmit->tail &= UART_XMIT_SIZE - 1;

	/* Restore "Tx FIFO below watermark" interrupt */
	msm_port->imr |= UART_IMR_TXLEV;
	FUNC4(port, msm_port->imr, UART_IMR);

	if (FUNC7(xmit) < WAKEUP_CHARS)
		FUNC8(port);

	FUNC2(port);
done:
	FUNC6(&port->lock, flags);
}