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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct dma_chan {int dummy; } ;
struct atmel_uart_port {int /*<<< orphan*/  cookie_rx; struct dma_chan* chan_rx; int /*<<< orphan*/ * desc_rx; int /*<<< orphan*/  sg_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 struct atmel_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC3(port);
	struct dma_chan *chan = atmel_port->chan_rx;

	if (chan) {
		FUNC2(chan);
		FUNC0(chan);
		FUNC1(port->dev, &atmel_port->sg_rx, 1,
				DMA_FROM_DEVICE);
	}

	atmel_port->desc_rx = NULL;
	atmel_port->chan_rx = NULL;
	atmel_port->cookie_rx = -EINVAL;
}