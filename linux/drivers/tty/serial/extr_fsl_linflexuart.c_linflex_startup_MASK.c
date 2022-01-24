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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  linflex_int ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(&port->lock, flags);

	FUNC1(port);

	FUNC3(&port->lock, flags);

	ret = FUNC0(port->dev, port->irq, linflex_int, 0,
			       DRIVER_NAME, port);

	return ret;
}