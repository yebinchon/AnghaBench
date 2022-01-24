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
struct uart_port {int /*<<< orphan*/  irq; } ;
struct tegra_uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tegra_uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_uart_port*) ; 
 struct tegra_uart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *u)
{
	struct tegra_uart_port *tup = FUNC2(u);

	FUNC1(tup);
	FUNC0(u->irq, tup);
}