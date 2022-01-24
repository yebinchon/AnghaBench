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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int enable; int /*<<< orphan*/  chn; } ;
struct TYPE_3__ {scalar_t__ enable; } ;
struct sprd_uart_port {TYPE_2__ rx_dma; TYPE_1__ tx_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port,
				  struct sprd_uart_port *sp)
{
	int ret;

	FUNC2(port);
	if (!(sp->rx_dma.enable || sp->tx_dma.enable))
		return;

	ret = FUNC3(port);
	if (ret) {
		sp->rx_dma.enable = false;
		FUNC1(sp->rx_dma.chn);
		FUNC0(port->dev, "fail to start RX dma mode\n");
	}

	FUNC4(port, true);
}