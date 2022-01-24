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
struct uart_port {TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 

__attribute__((used)) static bool FUNC2(struct uart_port *port)
{
	return FUNC0(&port->state->xmit) || FUNC1(port);
}