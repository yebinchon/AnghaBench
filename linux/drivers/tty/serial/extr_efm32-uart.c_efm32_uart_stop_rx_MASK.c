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
struct efm32_uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTn_CMD ; 
 int /*<<< orphan*/  UARTn_CMD_RXDIS ; 
 int /*<<< orphan*/  FUNC0 (struct efm32_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct efm32_uart_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct efm32_uart_port *efm_port = FUNC1(port);

	FUNC0(efm_port, UARTn_CMD_RXDIS, UARTn_CMD);
}