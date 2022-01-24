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
struct uart_port {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int /*<<< orphan*/  CmdReg; } ;

/* Variables and functions */
 unsigned char CMD_HOLD_XMIT ; 
 TYPE_2__* ICOM_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	unsigned char cmdReg;

	FUNC2(ICOM_PORT, "START", 0);
	cmdReg = FUNC1(&ICOM_PORT->dram->CmdReg);
	if ((cmdReg & CMD_HOLD_XMIT) == CMD_HOLD_XMIT)
		FUNC3(cmdReg & ~CMD_HOLD_XMIT,
		       &ICOM_PORT->dram->CmdReg);

	FUNC0(port);
}