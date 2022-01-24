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
struct uart_driver {int dummy; } ;
struct TYPE_2__ {struct uart_driver* private_data; } ;
struct qcom_geni_serial_port {TYPE_1__ uport; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct qcom_geni_serial_port* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_driver*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct qcom_geni_serial_port *port = FUNC0(pdev);
	struct uart_driver *drv = port->uport.private_data;

	FUNC1(drv, &port->uport);
	return 0;
}