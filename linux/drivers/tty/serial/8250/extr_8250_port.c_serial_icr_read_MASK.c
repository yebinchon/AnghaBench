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
struct uart_8250_port {int acr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_ACR ; 
 int UART_ACR_ICRRD ; 
 int /*<<< orphan*/  UART_ICR ; 
 int /*<<< orphan*/  UART_SCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_8250_port *up, int offset)
{
	unsigned int value;

	FUNC0(up, UART_ACR, up->acr | UART_ACR_ICRRD);
	FUNC2(up, UART_SCR, offset);
	value = FUNC1(up, UART_ICR);
	FUNC0(up, UART_ACR, up->acr);

	return value;
}