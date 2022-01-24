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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_2__* state; int /*<<< orphan*/  lock; TYPE_1__ icount; scalar_t__ membase; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 scalar_t__ UA_EMI_REC ; 
 scalar_t__ UA_STATUS ; 
 int UA_STATUS_FRAME_ERR ; 
 int UA_STATUS_OVERRUN_ERR ; 
 int UA_STATUS_PARITY_ERR ; 
 scalar_t__ FUNC0 (struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int,int,int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	unsigned long flags;

	FUNC2(&port->lock, flags);

	while (1) {
		u8 status, ch;
		unsigned int ch_flag;

		if (FUNC0(port))
			break;

		ch = FUNC1(port->membase + UA_EMI_REC);
		status = FUNC1(port->membase + UA_STATUS);

		port->icount.rx++;
		ch_flag = TTY_NORMAL;

		if (status) {
			if (status & UA_STATUS_PARITY_ERR)
				port->icount.parity++;
			else if (status & UA_STATUS_FRAME_ERR)
				port->icount.frame++;
			else if (status & UA_STATUS_OVERRUN_ERR)
				port->icount.overrun++;

			status &= port->read_status_mask;

			if (status & UA_STATUS_PARITY_ERR)
				ch_flag = TTY_PARITY;
			else if (status & UA_STATUS_FRAME_ERR)
				ch_flag = TTY_FRAME;
			else if (status & UA_STATUS_OVERRUN_ERR)
				ch_flag = TTY_OVERRUN;
		}

		if (status & port->ignore_status_mask)
			continue;

		FUNC5(port, status, UA_STATUS_OVERRUN_ERR, ch,
				 ch_flag);
	}

	FUNC3(&port->lock, flags);

	FUNC4(&port->state->port);
}