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
struct efm32_uart_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UARTn_IF ; 
 int /*<<< orphan*/  UARTn_IFC ; 
 int UARTn_IF_TXBL ; 
 int UARTn_IF_TXC ; 
 int FUNC0 (struct efm32_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_uart_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct efm32_uart_port *efm_port = data;
	u32 irqflag = FUNC0(efm_port, UARTn_IF);

	/* TXBL doesn't need to be cleared */
	if (irqflag & UARTn_IF_TXC)
		FUNC2(efm_port, UARTn_IF_TXC, UARTn_IFC);

	if (irqflag & (UARTn_IF_TXC | UARTn_IF_TXBL)) {
		FUNC1(efm_port);
		return IRQ_HANDLED;
	} else
		return IRQ_NONE;
}