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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct rp2_uart_port {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP2_CHAN_STAT ; 
 struct rp2_uart_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct rp2_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rp2_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct rp2_uart_port *up = FUNC0(port);
	unsigned long flags;

	FUNC3(port, 0);

	FUNC4(&port->lock, flags);
	FUNC1(up, up->idx, 0);
	FUNC2(up, RP2_CHAN_STAT, 0, 0);
	FUNC5(&port->lock, flags);
}