#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int /*<<< orphan*/  CmdReg; } ;

/* Variables and functions */
 unsigned char CMD_SND_BREAK ; 
 TYPE_2__* ICOM_PORT ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, int break_state)
{
	unsigned char cmdReg;
	unsigned long flags;

	FUNC1(&port->lock, flags);
	FUNC3(ICOM_PORT, "BREAK", 0);
	cmdReg = FUNC0(&ICOM_PORT->dram->CmdReg);
	if (break_state == -1) {
		FUNC4(cmdReg | CMD_SND_BREAK, &ICOM_PORT->dram->CmdReg);
	} else {
		FUNC4(cmdReg & ~CMD_SND_BREAK, &ICOM_PORT->dram->CmdReg);
	}
	FUNC2(&port->lock, flags);
}