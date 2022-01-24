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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int /*<<< orphan*/  OWL_UART_CTL_TXIE ; 
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int /*<<< orphan*/  OWL_UART_STAT_TIP ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	u32 val;

	if (FUNC3(port)) {
		FUNC1(port);
		return;
	}

	val = FUNC0(port, OWL_UART_STAT);
	val |= OWL_UART_STAT_TIP;
	FUNC2(port, val, OWL_UART_STAT);

	val = FUNC0(port, OWL_UART_CTL);
	val |= OWL_UART_CTL_TXIE;
	FUNC2(port, val, OWL_UART_CTL);
}