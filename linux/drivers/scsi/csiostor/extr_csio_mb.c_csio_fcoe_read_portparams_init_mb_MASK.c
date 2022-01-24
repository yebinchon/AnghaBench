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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int nstats_port; int port_valid_ix; } ;
struct TYPE_4__ {TYPE_1__ ctl; } ;
struct fw_fcoe_stats_cmd {TYPE_2__ u; void* free_to_len16; void* op_to_flowid; } ;
struct fw_fcoe_port_cmd_params {int /*<<< orphan*/  idx; int /*<<< orphan*/  portid; int /*<<< orphan*/  nstats; } ;
struct csio_mb {int mb_size; scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_fcoe_stats_cmd*,int /*<<< orphan*/ ,struct csio_hw*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int CSIO_MAX_MB_SIZE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_FCOE_STATS_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FW_FCOE_STATS_CMD_PORT_VALID ; 
 void* FUNC6 (int) ; 

void
FUNC7(struct csio_hw *hw, struct csio_mb *mbp,
				uint32_t mb_tmo,
				struct fw_fcoe_port_cmd_params *portparams,
				void (*cbfn)(struct csio_hw *,
					     struct csio_mb *))
{
	struct fw_fcoe_stats_cmd *cmdp = (struct fw_fcoe_stats_cmd *)(mbp->mb);

	FUNC0(mbp, cmdp, mb_tmo, hw, cbfn, 1);
	mbp->mb_size = 64;

	cmdp->op_to_flowid = FUNC6(FUNC2(FW_FCOE_STATS_CMD)         |
				   FW_CMD_REQUEST_F | FW_CMD_READ_F);
	cmdp->free_to_len16 = FUNC6(FUNC1(CSIO_MAX_MB_SIZE/16));

	cmdp->u.ctl.nstats_port = FUNC4(portparams->nstats) |
				  FUNC5(portparams->portid);

	cmdp->u.ctl.port_valid_ix = FUNC3(portparams->idx)    |
				    FW_FCOE_STATS_CMD_PORT_VALID;

}