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
struct uart_amba_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uart_amba_port**) ; 
 struct uart_amba_port** amba_ports ; 
 int /*<<< orphan*/  amba_reg ; 
 int /*<<< orphan*/  FUNC1 (struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uart_amba_port *uap)
{
	int i;
	bool busy = false;

	for (i = 0; i < FUNC0(amba_ports); i++) {
		if (amba_ports[i] == uap)
			amba_ports[i] = NULL;
		else if (amba_ports[i])
			busy = true;
	}
	FUNC1(uap);
	if (!busy)
		FUNC2(&amba_reg);
}