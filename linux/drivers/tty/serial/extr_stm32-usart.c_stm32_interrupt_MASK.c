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
typedef  int u32 ;
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  lock; } ;
struct stm32_usart_offsets {scalar_t__ isr; scalar_t__ icr; } ;
struct stm32_port {scalar_t__ rx_ch; int /*<<< orphan*/  tx_ch; TYPE_1__* info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ UNDEF_REG ; 
 int /*<<< orphan*/  USART_ICR_RTOCF ; 
 int /*<<< orphan*/  USART_ICR_WUCF ; 
 int USART_SR_RTOF ; 
 int USART_SR_RXNE ; 
 int USART_SR_TXE ; 
 int USART_SR_WUF ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 struct stm32_port* FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *ptr)
{
	struct uart_port *port = ptr;
	struct stm32_port *stm32_port = FUNC5(port);
	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
	u32 sr;

	FUNC1(&port->lock);

	sr = FUNC0(port->membase + ofs->isr);

	if ((sr & USART_SR_RTOF) && ofs->icr != UNDEF_REG)
		FUNC6(USART_ICR_RTOCF,
			       port->membase + ofs->icr);

	if ((sr & USART_SR_WUF) && (ofs->icr != UNDEF_REG))
		FUNC6(USART_ICR_WUCF,
			       port->membase + ofs->icr);

	if ((sr & USART_SR_RXNE) && !(stm32_port->rx_ch))
		FUNC3(port, false);

	if ((sr & USART_SR_TXE) && !(stm32_port->tx_ch))
		FUNC4(port);

	FUNC2(&port->lock);

	if (stm32_port->rx_ch)
		return IRQ_WAKE_THREAD;
	else
		return IRQ_HANDLED;
}