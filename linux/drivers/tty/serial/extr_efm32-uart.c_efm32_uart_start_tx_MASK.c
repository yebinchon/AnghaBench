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
struct uart_port {int dummy; } ;
struct efm32_uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTn_CMD ; 
 int UARTn_CMD_TXEN ; 
 int /*<<< orphan*/  UARTn_IEN ; 
 int /*<<< orphan*/  UARTn_IFC ; 
 int UARTn_IF_TXBL ; 
 int UARTn_IF_TXC ; 
 int FUNC0 (struct efm32_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_uart_port*,int,int /*<<< orphan*/ ) ; 
 struct efm32_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct efm32_uart_port *efm_port = FUNC3(port);
	u32 ien;

	FUNC2(efm_port,
			UARTn_IF_TXBL | UARTn_IF_TXC, UARTn_IFC);
	ien = FUNC0(efm_port, UARTn_IEN);
	FUNC2(efm_port,
			ien | UARTn_IF_TXBL | UARTn_IF_TXC, UARTn_IEN);
	FUNC2(efm_port, UARTn_CMD_TXEN, UARTn_CMD);

	FUNC1(efm_port);
}