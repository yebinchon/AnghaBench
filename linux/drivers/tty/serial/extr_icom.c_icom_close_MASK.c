#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_8__ {TYPE_2__* adapter; TYPE_1__* dram; } ;
struct TYPE_7__ {int /*<<< orphan*/  kref; } ;
struct TYPE_6__ {int /*<<< orphan*/  CmdReg; } ;

/* Variables and functions */
 unsigned char CMD_RCV_ENABLE ; 
 TYPE_3__* ICOM_PORT ; 
 int /*<<< orphan*/  icom_kref_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	unsigned char cmdReg;

	FUNC3(ICOM_PORT, "CLOSE", 0);

	/* stop receiver */
	cmdReg = FUNC1(&ICOM_PORT->dram->CmdReg);
	FUNC4(cmdReg & ~CMD_RCV_ENABLE, &ICOM_PORT->dram->CmdReg);

	FUNC2(ICOM_PORT);

	FUNC0(&ICOM_PORT->adapter->kref, icom_kref_release);
}