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
struct uart_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dram; } ;
struct TYPE_3__ {int /*<<< orphan*/  CmdReg; } ;

/* Variables and functions */
 unsigned char CMD_RCV_ENABLE ; 
 TYPE_2__* ICOM_PORT ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	unsigned char cmdReg;

	cmdReg = FUNC0(&ICOM_PORT->dram->CmdReg);
	FUNC1(cmdReg & ~CMD_RCV_ENABLE, &ICOM_PORT->dram->CmdReg);
}