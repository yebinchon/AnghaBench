#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tx; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_4__ icount; TYPE_1__* state; } ;
struct uart_8250_port {TYPE_5__ port; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {scalar_t__ tx_size; scalar_t__ tx_running; int /*<<< orphan*/  tx_addr; TYPE_3__* txchan; } ;
struct circ_buf {int tail; } ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC7(void *param)
{
	struct uart_8250_port	*p = param;
	struct uart_8250_dma	*dma = p->dma;
	struct circ_buf		*xmit = &p->port.state->xmit;
	unsigned long	flags;
	int		ret;

	FUNC0(dma->txchan->device->dev, dma->tx_addr,
				UART_XMIT_SIZE, DMA_TO_DEVICE);

	FUNC3(&p->port.lock, flags);

	dma->tx_running = 0;

	xmit->tail += dma->tx_size;
	xmit->tail &= UART_XMIT_SIZE - 1;
	p->port.icount.tx += dma->tx_size;

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC6(&p->port);

	ret = FUNC2(p);
	if (ret)
		FUNC1(p);

	FUNC4(&p->port.lock, flags);
}