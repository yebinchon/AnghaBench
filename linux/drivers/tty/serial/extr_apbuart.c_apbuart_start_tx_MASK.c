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
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int UART_CTRL_TI ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int UART_STATUS_THE ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	unsigned int cr;

	cr = FUNC0(port);
	cr |= UART_CTRL_TI;
	FUNC2(port, cr);

	if (FUNC1(port) & UART_STATUS_THE)
		FUNC3(port);
}