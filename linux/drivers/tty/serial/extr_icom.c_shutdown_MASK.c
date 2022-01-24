#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct icom_port {int port; TYPE_4__* dram; TYPE_3__* global_reg; TYPE_2__* adapter; } ;
struct TYPE_11__ {unsigned long processor_id; int /*<<< orphan*/ * global_int_mask; } ;
struct TYPE_10__ {int /*<<< orphan*/  CmdReg; } ;
struct TYPE_9__ {int /*<<< orphan*/  int_mask_2; int /*<<< orphan*/  int_mask; } ;
struct TYPE_8__ {TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 unsigned char CMD_SND_BREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  icom_lock ; 
 TYPE_5__* int_mask_tbl ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct icom_port*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct icom_port *icom_port)
{
	unsigned long temp;
	unsigned char cmdReg;
	unsigned long flags;
	int port;

	FUNC4(&icom_lock, flags);
	FUNC6(icom_port, "SHUTDOWN", 0);

	/*
	 * disable all interrupts
	 */
	port = icom_port->port;
	if (port >= FUNC0(int_mask_tbl)) {
		FUNC1(&icom_port->adapter->pci_dev->dev,
			"Invalid port assignment\n");
		goto unlock;
	}
	if (port == 0 || port == 1)
		int_mask_tbl[port].global_int_mask = &icom_port->global_reg->int_mask;
	else
		int_mask_tbl[port].global_int_mask = &icom_port->global_reg->int_mask_2;

	temp = FUNC3(int_mask_tbl[port].global_int_mask);
	FUNC8(temp | int_mask_tbl[port].processor_id, int_mask_tbl[port].global_int_mask);

	/* write flush */
	FUNC3(int_mask_tbl[port].global_int_mask);

unlock:
	FUNC5(&icom_lock, flags);

	/*
	 * disable break condition
	 */
	cmdReg = FUNC2(&icom_port->dram->CmdReg);
	if (cmdReg & CMD_SND_BREAK) {
		FUNC7(cmdReg & ~CMD_SND_BREAK, &icom_port->dram->CmdReg);
	}
}