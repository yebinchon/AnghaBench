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
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_TX_READY ; 
 int /*<<< orphan*/  UART_ISR ; 
 int UART_ISR_TX_READY ; 
 int /*<<< orphan*/  UART_SR ; 
 int UART_SR_TX_EMPTY ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct uart_port *port)
{
	unsigned int timeout = 500000;

	while (!(FUNC0(port, UART_SR) & UART_SR_TX_EMPTY)) {
		if (FUNC0(port, UART_ISR) & UART_ISR_TX_READY)
			break;
		FUNC2(1);
		if (!timeout--)
			break;
	}
	FUNC1(port, UART_CR_CMD_RESET_TX_READY, UART_CR);
}