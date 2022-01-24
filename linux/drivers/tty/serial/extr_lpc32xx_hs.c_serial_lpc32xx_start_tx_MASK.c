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
struct uart_port {int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC32XX_HSU_TX_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	u32 tmp;

	FUNC1(port);
	tmp = FUNC2(FUNC0(port->membase));
	tmp |= LPC32XX_HSU_TX_INT_EN;
	FUNC3(tmp, FUNC0(port->membase));
}