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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  line; } ;
struct qcom_geni_serial_port {int /*<<< orphan*/  name; int /*<<< orphan*/  setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  qcom_geni_serial_isr ; 
 int FUNC1 (struct uart_port*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 struct qcom_geni_serial_port* FUNC4 (struct uart_port*,struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 

__attribute__((used)) static int FUNC6(struct uart_port *uport)
{
	int ret;
	struct qcom_geni_serial_port *port = FUNC4(uport, uport);

	FUNC3(port->name, sizeof(port->name),
		  "qcom_serial_%s%d",
		(FUNC5(uport) ? "console" : "uart"), uport->line);

	if (!port->setup) {
		ret = FUNC1(uport);
		if (ret)
			return ret;
	}

	ret = FUNC2(uport->irq, qcom_geni_serial_isr, IRQF_TRIGGER_HIGH,
							port->name, uport);
	if (ret)
		FUNC0(uport->dev, "Failed to get IRQ ret %d\n", ret);
	return ret;
}