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
struct lpc18xx_uart_data {int /*<<< orphan*/  clk_reg; int /*<<< orphan*/  clk_uart; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lpc18xx_uart_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct lpc18xx_uart_data *data = FUNC1(pdev);

	FUNC2(data->line);
	FUNC0(data->clk_uart);
	FUNC0(data->clk_reg);

	return 0;
}