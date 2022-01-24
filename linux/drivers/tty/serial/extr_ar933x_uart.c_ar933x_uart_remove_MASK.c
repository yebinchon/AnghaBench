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
struct platform_device {int dummy; } ;
struct ar933x_uart_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ar933x_uart_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ar933x_uart_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ar933x_uart_port *up;

	up = FUNC1(pdev);

	if (up) {
		FUNC2(&ar933x_uart_driver, &up->port);
		FUNC0(up->clk);
	}

	return 0;
}