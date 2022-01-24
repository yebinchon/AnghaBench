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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct mps2_uart_port {TYPE_1__ port; } ;

/* Variables and functions */
 struct mps2_uart_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, u32 val, unsigned int off)
{
	struct mps2_uart_port *mps_port = FUNC0(port);

	FUNC1(val, mps_port->port.membase + off);
}