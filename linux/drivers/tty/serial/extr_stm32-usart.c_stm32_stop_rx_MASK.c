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
struct uart_port {int dummy; } ;
struct stm32_usart_offsets {int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr1; } ;
struct stm32_port {scalar_t__ cr3_irq; scalar_t__ cr1_irq; TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct stm32_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct stm32_port *stm32_port = FUNC1(port);
	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;

	FUNC0(port, ofs->cr1, stm32_port->cr1_irq);
	if (stm32_port->cr3_irq)
		FUNC0(port, ofs->cr3, stm32_port->cr3_irq);

}