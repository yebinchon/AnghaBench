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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct omap8250_priv* private_data; } ;
struct uart_8250_port {int ier; TYPE_1__* dma; } ;
struct omap8250_priv {int throttled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rx_dma ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*) ; 
 struct uart_8250_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct omap8250_priv *priv = port->private_data;
	struct uart_8250_port *up = FUNC7(port);
	unsigned long flags;

	FUNC0(port->dev);

	FUNC4(&port->lock, flags);
	priv->throttled = false;
	if (up->dma)
		up->dma->rx_dma(up);
	up->ier |= UART_IER_RLSI | UART_IER_RDI;
	FUNC3(up, UART_IER, up->ier);
	FUNC5(&port->lock, flags);

	FUNC1(port->dev);
	FUNC2(port->dev);
}