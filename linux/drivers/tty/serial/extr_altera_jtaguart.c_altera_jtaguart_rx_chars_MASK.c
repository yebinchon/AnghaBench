#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rx; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; scalar_t__ membase; } ;
struct altera_jtaguart {struct uart_port port; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned long ALTERA_JTAGUART_DATA_DATA_MSK ; 
 scalar_t__ ALTERA_JTAGUART_DATA_REG ; 
 unsigned long ALTERA_JTAGUART_DATA_RVALID_MSK ; 
 unsigned char TTY_NORMAL ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct uart_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct altera_jtaguart *pp)
{
	struct uart_port *port = &pp->port;
	unsigned char ch, flag;
	unsigned long status;

	while ((status = FUNC0(port->membase + ALTERA_JTAGUART_DATA_REG)) &
	       ALTERA_JTAGUART_DATA_RVALID_MSK) {
		ch = status & ALTERA_JTAGUART_DATA_DATA_MSK;
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (FUNC4(port, ch))
			continue;
		FUNC5(port, 0, 0, ch, flag);
	}

	FUNC2(&port->lock);
	FUNC3(&port->state->port);
	FUNC1(&port->lock);
}