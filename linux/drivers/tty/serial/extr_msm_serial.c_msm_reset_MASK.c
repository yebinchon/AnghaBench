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
struct msm_port {scalar_t__ is_uartdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTDM_DMEN ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_BREAK_INT ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_CTS ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_ERR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_RX ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_TX ; 
 int /*<<< orphan*/  UART_CR_CMD_SET_RFR ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct msm_port *msm_port = FUNC0(port);

	/* reset everything */
	FUNC1(port, UART_CR_CMD_RESET_RX, UART_CR);
	FUNC1(port, UART_CR_CMD_RESET_TX, UART_CR);
	FUNC1(port, UART_CR_CMD_RESET_ERR, UART_CR);
	FUNC1(port, UART_CR_CMD_RESET_BREAK_INT, UART_CR);
	FUNC1(port, UART_CR_CMD_RESET_CTS, UART_CR);
	FUNC1(port, UART_CR_CMD_SET_RFR, UART_CR);

	/* Disable DM modes */
	if (msm_port->is_uartdm)
		FUNC1(port, 0, UARTDM_DMEN);
}