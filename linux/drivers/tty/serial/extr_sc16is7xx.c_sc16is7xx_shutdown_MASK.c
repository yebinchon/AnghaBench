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
struct sc16is7xx_port {int /*<<< orphan*/  kworker; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC16IS7XX_EFCR_REG ; 
 int SC16IS7XX_EFCR_RXDISABLE_BIT ; 
 int SC16IS7XX_EFCR_TXDISABLE_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_IER_REG ; 
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);

	/* Disable all interrupts */
	FUNC3(port, SC16IS7XX_IER_REG, 0);
	/* Disable TX/RX */
	FUNC2(port, SC16IS7XX_EFCR_REG,
			      SC16IS7XX_EFCR_RXDISABLE_BIT |
			      SC16IS7XX_EFCR_TXDISABLE_BIT,
			      SC16IS7XX_EFCR_RXDISABLE_BIT |
			      SC16IS7XX_EFCR_TXDISABLE_BIT);

	FUNC4(port, 0);

	FUNC1(&s->kworker);
}