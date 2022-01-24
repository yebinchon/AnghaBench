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
typedef  int u32 ;
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int LPC32XX_HSU_RX_TL32B ; 
 int LPC32XX_HSU_TMO_INACT_4B ; 
 int LPC32XX_HSU_TX_TL8B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	u32 tmp;
	unsigned long flags;

	FUNC4(&port->lock, flags);

	tmp = LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
		FUNC1(20) | LPC32XX_HSU_TMO_INACT_4B;
	FUNC6(tmp, FUNC0(port->membase));

	FUNC3(port->mapbase, 1); /* go to loopback mode */

	FUNC5(&port->lock, flags);

	FUNC2(port->irq, port);
}