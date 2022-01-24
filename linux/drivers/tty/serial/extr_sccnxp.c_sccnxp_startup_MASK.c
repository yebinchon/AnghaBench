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
struct uart_port {size_t line; int /*<<< orphan*/  dev; } ;
struct sccnxp_port {int* opened; int /*<<< orphan*/  lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CR_CMD_BREAK_RESET ; 
 int CR_CMD_RX_RESET ; 
 int CR_CMD_STATUS_RESET ; 
 int CR_CMD_TX_RESET ; 
 int CR_RX_ENABLE ; 
 int CR_TX_ENABLE ; 
 int /*<<< orphan*/  IMR_RXRDY ; 
 int /*<<< orphan*/  SCCNXP_CR_REG ; 
 int SCCNXP_HAVE_IO ; 
 int /*<<< orphan*/  SCCNXP_OPCR_REG ; 
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct sccnxp_port *s = FUNC0(port->dev);
	unsigned long flags;

	FUNC4(&s->lock, flags);

	if (s->chip->flags & SCCNXP_HAVE_IO) {
		/* Outputs are controlled manually */
		FUNC3(port, SCCNXP_OPCR_REG, 0);
	}

	/* Reset break condition, status and FIFOs */
	FUNC2(port, SCCNXP_CR_REG, CR_CMD_RX_RESET);
	FUNC2(port, SCCNXP_CR_REG, CR_CMD_TX_RESET);
	FUNC2(port, SCCNXP_CR_REG, CR_CMD_STATUS_RESET);
	FUNC2(port, SCCNXP_CR_REG, CR_CMD_BREAK_RESET);

	/* Enable RX & TX */
	FUNC2(port, SCCNXP_CR_REG, CR_RX_ENABLE | CR_TX_ENABLE);

	/* Enable RX interrupt */
	FUNC1(port, IMR_RXRDY);

	s->opened[port->line] = 1;

	FUNC5(&s->lock, flags);

	return 0;
}