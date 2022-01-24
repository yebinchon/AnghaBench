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
struct uart_port {int /*<<< orphan*/  uartclk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				   struct uart_port *port)
{
	struct clk *clk_xtal = NULL;
	struct clk *clk_pclk = NULL;
	struct clk *clk_baud = NULL;

	clk_pclk = FUNC3(&pdev->dev, "pclk");
	if (FUNC0(clk_pclk))
		return FUNC1(clk_pclk);

	clk_xtal = FUNC3(&pdev->dev, "xtal");
	if (FUNC0(clk_xtal))
		return FUNC1(clk_xtal);

	clk_baud = FUNC3(&pdev->dev, "baud");
	if (FUNC0(clk_baud))
		return FUNC1(clk_baud);

	port->uartclk = FUNC2(clk_baud);

	return 0;
}