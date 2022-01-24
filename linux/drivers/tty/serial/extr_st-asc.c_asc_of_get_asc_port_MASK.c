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
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int line; } ;
struct asc_port {int /*<<< orphan*/ * rts; TYPE_1__ port; void* force_m1; void* hw_flow_control; } ;

/* Variables and functions */
 int ASC_MAX_PORTS ; 
 char* ASC_SERIAL_NAME ; 
 scalar_t__ FUNC0 (int) ; 
 struct asc_port* asc_ports ; 
 int FUNC1 (struct device_node*,char*) ; 
 void* FUNC2 (struct device_node*,char*) ; 

__attribute__((used)) static struct asc_port *FUNC3(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	int id;

	if (!np)
		return NULL;

	id = FUNC1(np, "serial");
	if (id < 0)
		id = FUNC1(np, ASC_SERIAL_NAME);

	if (id < 0)
		id = 0;

	if (FUNC0(id >= ASC_MAX_PORTS))
		return NULL;

	asc_ports[id].hw_flow_control = FUNC2(np,
							"uart-has-rtscts");
	asc_ports[id].force_m1 =  FUNC2(np, "st,force_m1");
	asc_ports[id].port.line = id;
	asc_ports[id].rts = NULL;

	return &asc_ports[id];
}