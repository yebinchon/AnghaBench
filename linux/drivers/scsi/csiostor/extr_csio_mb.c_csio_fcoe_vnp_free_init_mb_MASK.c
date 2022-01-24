#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_fcoe_vnp_cmd {void* gen_wwn_to_vnpi; void* alloc_to_len16; void* op_to_fcfi; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_fcoe_vnp_cmd*,int /*<<< orphan*/ ,struct csio_lnode*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int FW_CMD_EXEC_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_FCOE_VNP_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_FCOE_VNP_CMD_FREE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 

void
FUNC6(struct csio_lnode *ln, struct csio_mb *mbp,
		uint32_t mb_tmo, uint32_t fcfi, uint32_t vnpi,
		void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct fw_fcoe_vnp_cmd *cmdp =
			(struct fw_fcoe_vnp_cmd *)(mbp->mb);

	FUNC0(mbp, cmdp, mb_tmo, ln, cbfn, 1);

	cmdp->op_to_fcfi = FUNC5(FUNC2(FW_FCOE_VNP_CMD)	|
				 FW_CMD_REQUEST_F			|
				 FW_CMD_EXEC_F			|
				 FUNC3(fcfi));
	cmdp->alloc_to_len16 = FUNC5(FW_FCOE_VNP_CMD_FREE	|
				     FUNC1(sizeof(*cmdp) / 16));
	cmdp->gen_wwn_to_vnpi = FUNC5(FUNC4(vnpi));
}