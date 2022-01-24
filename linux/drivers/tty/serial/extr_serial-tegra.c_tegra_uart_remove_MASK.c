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
struct tegra_uart_port {struct uart_port uport; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct tegra_uart_port* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  tegra_uart_driver ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct tegra_uart_port *tup = FUNC0(pdev);
	struct uart_port *u = &tup->uport;

	FUNC1(&tegra_uart_driver, u);
	return 0;
}