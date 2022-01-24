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
struct TYPE_2__ {int /*<<< orphan*/  uartclk; int /*<<< orphan*/  iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int /*<<< orphan*/  dev; } ;
struct pciserial_board {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 scalar_t__ FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct serial_private *priv,
		  const struct pciserial_board *board,
		  struct uart_8250_port *port, int idx)
{
	/* Needed by pci_quatech calls below */
	port->port.iobase = FUNC4(priv->dev, FUNC0(board->flags));
	/* Set up the clocking */
	port->port.uartclk = FUNC2(port);
	/* For now just warn about RS422 */
	if (FUNC3(port))
		FUNC5("quatech: software control of RS422 features not currently supported.\n");
	return FUNC1(priv, board, port, idx);
}