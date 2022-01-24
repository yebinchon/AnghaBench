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
struct TYPE_2__ {size_t line; } ;
struct sprd_uart_port {TYPE_1__ port; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct sprd_uart_port* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/ ** sprd_port ; 
 int /*<<< orphan*/  sprd_ports_num ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_uart_port*) ; 
 int /*<<< orphan*/  sprd_uart_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct sprd_uart_port *sup = FUNC0(dev);

	if (sup) {
		FUNC2(&sprd_uart_driver, &sup->port);
		sprd_port[sup->port.line] = NULL;
		sprd_ports_num--;
	}

	if (!sprd_ports_num)
		FUNC3(&sprd_uart_driver);

	FUNC1(sup);

	return 0;
}