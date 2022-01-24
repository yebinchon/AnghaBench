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
typedef  int u8 ;
struct uart_port {int /*<<< orphan*/  irq; } ;
struct mps2_uart_port {int flags; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; } ;

/* Variables and functions */
 int UART_PORT_COMBINED_IRQ ; 
 int /*<<< orphan*/  UARTn_CTRL ; 
 int UARTn_CTRL_RX_GRP ; 
 int UARTn_CTRL_TX_GRP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mps2_uart_port*) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 struct mps2_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct mps2_uart_port *mps_port = FUNC3(port);
	u8 control = FUNC1(port, UARTn_CTRL);

	control &= ~(UARTn_CTRL_RX_GRP | UARTn_CTRL_TX_GRP);

	FUNC2(port, control, UARTn_CTRL);

	if (!(mps_port->flags & UART_PORT_COMBINED_IRQ)) {
		FUNC0(mps_port->rx_irq, mps_port);
		FUNC0(mps_port->tx_irq, mps_port);
	}

	FUNC0(port->irq, mps_port);
}