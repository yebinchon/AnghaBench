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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int OWL_UART_CTL_EN ; 
 int OWL_UART_CTL_RXDE ; 
 int OWL_UART_CTL_RXIE ; 
 int OWL_UART_CTL_TXDE ; 
 int OWL_UART_CTL_TXIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	u32 val;
	unsigned long flags;

	FUNC3(&port->lock, flags);

	val = FUNC1(port, OWL_UART_CTL);
	val &= ~(OWL_UART_CTL_TXIE | OWL_UART_CTL_RXIE
		| OWL_UART_CTL_TXDE | OWL_UART_CTL_RXDE | OWL_UART_CTL_EN);
	FUNC2(port, val, OWL_UART_CTL);

	FUNC4(&port->lock, flags);

	FUNC0(port->irq, port);
}