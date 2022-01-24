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
typedef  scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;
struct men_z135_port {int /*<<< orphan*/  lock; struct uart_port port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct men_z135_port *uart,
				u32 addr, u32 val)
{
	struct uart_port *port = &uart->port;
	unsigned long flags;
	u32 reg;

	FUNC2(&uart->lock, flags);

	reg = FUNC0(port->membase + addr);
	reg &= ~val;
	FUNC1(reg, port->membase + addr);

	FUNC3(&uart->lock, flags);
}