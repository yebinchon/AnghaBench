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
struct imx_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  imx_uart_uart_driver ; 
 struct imx_port* FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct imx_port *sport = FUNC0(pdev);

	return FUNC1(&imx_uart_uart_driver, &sport->port);
}