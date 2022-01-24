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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_fcoe_link_cmd {int lstatus; void* retval_len16; void* sub_opcode_fcfi; void* op_to_portid; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_fcoe_link_cmd*,int /*<<< orphan*/ ,struct csio_lnode*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_FCOE_LINK_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 

void
FUNC7(struct csio_lnode *ln, struct csio_mb *mbp,
			uint32_t mb_tmo, uint8_t port_id, uint32_t sub_opcode,
			uint8_t cos, bool link_status, uint32_t fcfi,
			void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct fw_fcoe_link_cmd *cmdp =
				(struct fw_fcoe_link_cmd *)(mbp->mb);

	FUNC0(mbp, cmdp, mb_tmo, ln, cbfn, 1);

	cmdp->op_to_portid = FUNC6((
			FUNC2(FW_FCOE_LINK_CMD)		|
			FW_CMD_REQUEST_F				|
			FW_CMD_WRITE_F				|
			FUNC4(port_id)));
	cmdp->sub_opcode_fcfi = FUNC6(
			FUNC5(sub_opcode)	|
			FUNC3(fcfi));
	cmdp->lstatus = link_status;
	cmdp->retval_len16 = FUNC6(FUNC1(sizeof(*cmdp) / 16));

}