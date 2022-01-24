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
struct uart_port {size_t line; int /*<<< orphan*/  dev; int /*<<< orphan*/  uartclk; } ;
struct sprd_uart_port {struct clk* clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  SPRD_DEFAULT_SOURCE_CLK ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct sprd_uart_port** sprd_port ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static int FUNC7(struct uart_port *uport)
{
	struct clk *clk_uart, *clk_parent;
	struct sprd_uart_port *u = sprd_port[uport->line];

	clk_uart = FUNC5(uport->dev, "uart");
	if (FUNC0(clk_uart)) {
		FUNC4(uport->dev, "uart%d can't get uart clock\n",
			 uport->line);
		clk_uart = NULL;
	}

	clk_parent = FUNC5(uport->dev, "source");
	if (FUNC0(clk_parent)) {
		FUNC4(uport->dev, "uart%d can't get source clock\n",
			 uport->line);
		clk_parent = NULL;
	}

	if (!clk_uart || FUNC3(clk_uart, clk_parent))
		uport->uartclk = SPRD_DEFAULT_SOURCE_CLK;
	else
		uport->uartclk = FUNC2(clk_uart);

	u->clk = FUNC5(uport->dev, "enable");
	if (FUNC0(u->clk)) {
		if (FUNC1(u->clk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC4(uport->dev, "uart%d can't get enable clock\n",
			uport->line);

		/* To keep console alive even if the error occurred */
		if (!FUNC6(uport))
			return FUNC1(u->clk);

		u->clk = NULL;
	}

	return 0;
}