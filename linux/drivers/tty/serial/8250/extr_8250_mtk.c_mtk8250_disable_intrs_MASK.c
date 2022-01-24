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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct uart_8250_port *up, int mask)
{
	FUNC1(up, UART_IER, FUNC0(up, UART_IER) & (~mask));
}