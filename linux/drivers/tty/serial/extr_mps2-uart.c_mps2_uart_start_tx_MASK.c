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
typedef  int /*<<< orphan*/  u8 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTn_CTRL ; 
 int /*<<< orphan*/  UARTn_CTRL_TX_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	u8 control = FUNC0(port, UARTn_CTRL);

	control |= UARTn_CTRL_TX_INT_ENABLE;

	FUNC2(port, control, UARTn_CTRL);

	/*
	 * We've just unmasked the TX IRQ and now slow-starting via
	 * polling; if there is enough data to fill up the internal
	 * write buffer in one go, the TX IRQ should assert, at which
	 * point we switch to fully interrupt-driven TX.
	 */

	FUNC1(port);
}