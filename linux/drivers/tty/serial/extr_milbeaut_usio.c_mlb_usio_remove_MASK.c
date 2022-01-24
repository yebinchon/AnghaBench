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
struct uart_port {struct clk* private_data; } ;
struct platform_device {size_t id; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct uart_port* mlb_usio_ports ; 
 int /*<<< orphan*/  mlb_usio_uart_driver ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct uart_port *port = &mlb_usio_ports[pdev->id];
	struct clk *clk = port->private_data;

	FUNC1(&mlb_usio_uart_driver, port);
	FUNC0(clk);

	return 0;
}