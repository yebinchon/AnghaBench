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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; struct omap8250_priv* private_data; } ;
struct uart_8250_port {int lcr; scalar_t__ dma; scalar_t__ ier; } ;
struct omap8250_priv {int /*<<< orphan*/  qos_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_OMAP_WER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 struct uart_8250_port* FUNC9 (struct uart_port*) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC9(port);
	struct omap8250_priv *priv = port->private_data;

	FUNC1(&priv->qos_work);
	if (up->dma)
		FUNC3(up);

	FUNC4(port->dev);

	FUNC8(up, UART_OMAP_WER, 0);

	up->ier = 0;
	FUNC8(up, UART_IER, 0);

	if (up->dma)
		FUNC7(up);

	/*
	 * Disable break condition and FIFOs
	 */
	if (up->lcr & UART_LCR_SBC)
		FUNC8(up, UART_LCR, up->lcr & ~UART_LCR_SBC);
	FUNC8(up, UART_FCR, UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);

	FUNC5(port->dev);
	FUNC6(port->dev);
	FUNC2(port->irq, port);
	FUNC0(port->dev);
}