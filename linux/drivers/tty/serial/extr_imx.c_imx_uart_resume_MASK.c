#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct imx_port {int /*<<< orphan*/  clk_ipg; TYPE_1__ port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct imx_port* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*,int) ; 
 int /*<<< orphan*/  imx_uart_uart_driver ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct imx_port *sport = FUNC1(dev);

	/* disable wakeup from i.MX UART */
	FUNC3(sport, false);

	FUNC4(&imx_uart_uart_driver, &sport->port);
	FUNC2(sport->port.irq);

	FUNC0(sport->clk_ipg);

	return 0;
}