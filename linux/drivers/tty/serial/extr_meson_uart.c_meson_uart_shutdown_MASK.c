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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ AML_UART_CONTROL ; 
 int AML_UART_RX_EN ; 
 int AML_UART_RX_INT_EN ; 
 int AML_UART_TX_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	unsigned long flags;
	u32 val;

	FUNC0(port->irq, port);

	FUNC2(&port->lock, flags);

	val = FUNC1(port->membase + AML_UART_CONTROL);
	val &= ~AML_UART_RX_EN;
	val &= ~(AML_UART_RX_INT_EN | AML_UART_TX_INT_EN);
	FUNC4(val, port->membase + AML_UART_CONTROL);

	FUNC3(&port->lock, flags);
}