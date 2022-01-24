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
struct uart_port {int status; } ;
struct stm32_usart_offsets {int /*<<< orphan*/  cr3; } ;
struct stm32_port {TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 unsigned int TIOCM_RTS ; 
 int UPSTAT_AUTORTS ; 
 int /*<<< orphan*/  USART_CR3_RTSE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int mctrl)
{
	struct stm32_port *stm32_port = FUNC2(port);
	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;

	if ((mctrl & TIOCM_RTS) && (port->status & UPSTAT_AUTORTS))
		FUNC1(port, ofs->cr3, USART_CR3_RTSE);
	else
		FUNC0(port, ofs->cr3, USART_CR3_RTSE);
}