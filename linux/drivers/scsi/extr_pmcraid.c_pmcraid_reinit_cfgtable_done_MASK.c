#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pmcraid_cmd {TYPE_1__* drv_inst; scalar_t__ release; TYPE_4__* ioa_cb; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_8__ {TYPE_3__ ioasa; TYPE_2__ ioarcb; } ;
struct TYPE_5__ {int /*<<< orphan*/  worker_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pmcraid_cmd *cmd)
{
	FUNC1("response internal cmd CDB[0] = %x ioasc = %x\n",
		     cmd->ioa_cb->ioarcb.cdb[0],
		     FUNC0(cmd->ioa_cb->ioasa.ioasc));

	if (cmd->release) {
		cmd->release = 0;
		FUNC2(cmd);
	}
	FUNC1("scheduling worker for config table reinitialization\n");
	FUNC3(&cmd->drv_inst->worker_q);
}