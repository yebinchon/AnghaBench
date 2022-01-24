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
typedef  int u32 ;
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDA_UART_STATUS ; 
 int RDA_UART_TX_FIFO_MASK ; 
 unsigned int TIOCSER_TEMT ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *port)
{
	unsigned long flags;
	unsigned int ret;
	u32 val;

	FUNC1(&port->lock, flags);

	val = FUNC0(port, RDA_UART_STATUS);
	ret = (val & RDA_UART_TX_FIFO_MASK) ? TIOCSER_TEMT : 0;

	FUNC2(&port->lock, flags);

	return ret;
}