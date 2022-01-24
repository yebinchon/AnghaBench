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
struct uart_port {int /*<<< orphan*/  membase; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct qcom_geni_serial_port {TYPE_1__ se; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct qcom_geni_serial_port* FUNC3 (struct uart_port*,struct uart_port*) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct uart_port *uport)
{
	struct platform_device *pdev = FUNC4(uport->dev);
	struct qcom_geni_serial_port *port = FUNC3(uport, uport);

	uport->membase = FUNC2(pdev, 0);
	if (FUNC0(uport->membase))
		return FUNC1(uport->membase);
	port->se.base = uport->membase;
	return 0;
}