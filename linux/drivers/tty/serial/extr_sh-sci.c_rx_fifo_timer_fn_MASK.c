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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct timer_list {int dummy; } ;
struct sci_port {struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sci_port* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_fifo_timer ; 
 struct sci_port* s ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct sci_port *s = FUNC1(s, t, rx_fifo_timer);
	struct uart_port *port = &s->port;

	FUNC0(port->dev, "Rx timed out\n");
	FUNC2(port, 1);
}