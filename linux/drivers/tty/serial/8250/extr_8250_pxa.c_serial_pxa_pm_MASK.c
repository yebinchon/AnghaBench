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
struct uart_port {struct pxa8250_data* private_data; } ;
struct pxa8250_data {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int state,
	      unsigned int oldstate)
{
	struct pxa8250_data *data = port->private_data;

	if (!state)
		FUNC1(data->clk);
	else
		FUNC0(data->clk);
}