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
struct uart_amba_port {int /*<<< orphan*/  port; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uart_amba_port**) ; 
 struct uart_amba_port* FUNC1 (struct amba_device*) ; 
 struct uart_amba_port** amba_ports ; 
 int /*<<< orphan*/  amba_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct amba_device *dev)
{
	struct uart_amba_port *uap = FUNC1(dev);
	int i;
	bool busy = false;

	FUNC2(&amba_reg, &uap->port);

	for (i = 0; i < FUNC0(amba_ports); i++)
		if (amba_ports[i] == uap)
			amba_ports[i] = NULL;
		else if (amba_ports[i])
			busy = true;

	if (!busy)
		FUNC3(&amba_reg);

	return 0;
}