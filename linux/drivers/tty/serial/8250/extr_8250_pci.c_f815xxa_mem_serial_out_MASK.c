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
struct uart_port {scalar_t__ membase; struct f815xxa_data* private_data; } ;
struct f815xxa_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ UART_SCR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *p, int offset, int value)
{
	struct f815xxa_data *data = p->private_data;
	unsigned long flags;

	FUNC1(&data->lock, flags);
	FUNC3(value, p->membase + offset);
	FUNC0(p->membase + UART_SCR); /* Dummy read for flush pcie tx queue */
	FUNC2(&data->lock, flags);
}