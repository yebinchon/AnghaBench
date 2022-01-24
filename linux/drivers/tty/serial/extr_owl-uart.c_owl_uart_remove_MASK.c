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
struct platform_device {size_t id; } ;
struct owl_uart_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  owl_uart_driver ; 
 int /*<<< orphan*/ ** owl_uart_ports ; 
 struct owl_uart_port* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct owl_uart_port *owl_port = FUNC0(pdev);

	FUNC1(&owl_uart_driver, &owl_port->port);
	owl_uart_ports[pdev->id] = NULL;

	return 0;
}