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
struct sccnxp_port {int /*<<< orphan*/  lock; TYPE_1__* chip; scalar_t__* opened; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CR_RX_DISABLE ; 
 int CR_TX_DISABLE ; 
 int /*<<< orphan*/  DIR_OP ; 
 int IMR_RXRDY ; 
 int IMR_TXRDY ; 
 int /*<<< orphan*/  SCCNXP_CR_REG ; 
 int SCCNXP_HAVE_IO ; 
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct sccnxp_port *s = FUNC0(port->dev);
	unsigned long flags;

	FUNC4(&s->lock, flags);

	s->opened[port->line] = 0;

	/* Disable interrupts */
	FUNC1(port, IMR_TXRDY | IMR_RXRDY);

	/* Disable TX & RX */
	FUNC2(port, SCCNXP_CR_REG, CR_RX_DISABLE | CR_TX_DISABLE);

	/* Leave direction to input */
	if (s->chip->flags & SCCNXP_HAVE_IO)
		FUNC3(port, DIR_OP, 0);

	FUNC5(&s->lock, flags);
}