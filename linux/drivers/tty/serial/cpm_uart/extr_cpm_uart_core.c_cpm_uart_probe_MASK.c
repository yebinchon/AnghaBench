#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int line; TYPE_1__* dev; } ;
struct uart_cpm_port {TYPE_2__ port; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int UART_NR ; 
 int /*<<< orphan*/  cpm_reg ; 
 int FUNC0 (int /*<<< orphan*/ ,struct uart_cpm_port*) ; 
 struct uart_cpm_port* cpm_uart_ports ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct uart_cpm_port*) ; 
 int /*<<< orphan*/  probe_index ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *ofdev)
{
	int index = probe_index++;
	struct uart_cpm_port *pinfo = &cpm_uart_ports[index];
	int ret;

	pinfo->port.line = index;

	if (index >= UART_NR)
		return -ENODEV;

	FUNC1(ofdev, pinfo);

	/* initialize the device pointer for the port */
	pinfo->port.dev = &ofdev->dev;

	ret = FUNC0(ofdev->dev.of_node, pinfo);
	if (ret)
		return ret;

	return FUNC2(&cpm_reg, &pinfo->port);
}