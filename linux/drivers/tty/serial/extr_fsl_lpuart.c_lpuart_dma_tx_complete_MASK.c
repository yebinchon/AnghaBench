#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_6__ {int tx; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__ icount; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct lpuart_port {int dma_tx_bytes; int dma_tx_in_progress; TYPE_3__ port; int /*<<< orphan*/  dma_wait; int /*<<< orphan*/  dma_tx_nents; struct scatterlist* tx_sgl; } ;
struct circ_buf {int tail; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpuart_port*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
	struct lpuart_port *sport = arg;
	struct scatterlist *sgl = &sport->tx_sgl[0];
	struct circ_buf *xmit = &sport->port.state->xmit;
	unsigned long flags;

	FUNC3(&sport->port.lock, flags);

	FUNC0(sport->port.dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);

	xmit->tail = (xmit->tail + sport->dma_tx_bytes) & (UART_XMIT_SIZE - 1);

	sport->port.icount.tx += sport->dma_tx_bytes;
	sport->dma_tx_in_progress = false;
	FUNC4(&sport->port.lock, flags);

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC6(&sport->port);

	if (FUNC7(&sport->dma_wait)) {
		FUNC8(&sport->dma_wait);
		return;
	}

	FUNC3(&sport->port.lock, flags);

	if (!FUNC2(&sport->port))
		FUNC1(sport);

	FUNC4(&sport->port.lock, flags);
}