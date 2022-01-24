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
struct imx_port {int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct imx_port* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  imx_uart_uart_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct imx_port *sport = FUNC1(dev);

	FUNC2(&imx_uart_uart_driver, &sport->port);

	FUNC0(sport->clk_ipg);

	return 0;
}