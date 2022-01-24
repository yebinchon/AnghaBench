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
struct ingenic_uart_data {int /*<<< orphan*/  clk_baud; int /*<<< orphan*/  clk_module; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ingenic_uart_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ingenic_uart_data *data = FUNC1(pdev);

	FUNC2(data->line);
	FUNC0(data->clk_module);
	FUNC0(data->clk_baud);
	return 0;
}