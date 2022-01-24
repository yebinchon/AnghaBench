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
struct uart_port {scalar_t__ type; } ;
struct sci_port {int /*<<< orphan*/  rx_trigger; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 struct uart_port* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 struct sci_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct uart_port *port = FUNC0(dev);
	struct sci_port *sci = FUNC3(port);
	int ret;
	long r;

	ret = FUNC1(buf, 0, &r);
	if (ret)
		return ret;

	sci->rx_trigger = FUNC2(port, r);
	if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
		FUNC2(port, 1);

	return count;
}