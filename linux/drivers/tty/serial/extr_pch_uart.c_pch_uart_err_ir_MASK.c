#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; } ;
struct uart_port {TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_struct {int dummy; } ;
struct eg20t_port {TYPE_3__* pdev; struct uart_port port; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int PCH_UART_LSR_ERR ; 
 unsigned int UART_LSR_FE ; 
 unsigned int UART_LSR_OE ; 
 unsigned int UART_LSR_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 struct tty_struct* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct eg20t_port *priv, unsigned int lsr)
{
	struct uart_port *port = &priv->port;
	struct tty_struct *tty = FUNC2(&port->state->port);
	char   *error_msg[5] = {};
	int    i = 0;

	if (lsr & PCH_UART_LSR_ERR)
		error_msg[i++] = "Error data in FIFO\n";

	if (lsr & UART_LSR_FE) {
		port->icount.frame++;
		error_msg[i++] = "  Framing Error\n";
	}

	if (lsr & UART_LSR_PE) {
		port->icount.parity++;
		error_msg[i++] = "  Parity Error\n";
	}

	if (lsr & UART_LSR_OE) {
		port->icount.overrun++;
		error_msg[i++] = "  Overrun Error\n";
	}

	if (tty == NULL) {
		for (i = 0; error_msg[i] != NULL; i++)
			FUNC0(&priv->pdev->dev, error_msg[i]);
	} else {
		FUNC1(tty);
	}
}