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
struct uart_port {TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct eg20t_port {int /*<<< orphan*/  desc_rx; int /*<<< orphan*/  trigger_level; int /*<<< orphan*/  sg_rx; struct uart_port port; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int PCH_UART_HAL_RX_ERR_INT ; 
 int PCH_UART_HAL_RX_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct eg20t_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eg20t_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct eg20t_port *priv = arg;
	struct uart_port *port = &priv->port;
	int count;

	FUNC2(port->dev, &priv->sg_rx, 1, DMA_FROM_DEVICE);
	count = FUNC1(priv, priv->trigger_level);
	if (count)
		FUNC4(&port->state->port);
	FUNC0(priv->desc_rx);
	FUNC3(priv, PCH_UART_HAL_RX_INT |
					    PCH_UART_HAL_RX_ERR_INT);
}