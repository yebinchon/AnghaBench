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
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  linkattr32; int /*<<< orphan*/  lstatus32_to_cbllen32; } ;
struct TYPE_5__ {int /*<<< orphan*/  lstatus_to_modtype; } ;
struct TYPE_7__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; int /*<<< orphan*/  action_to_len16; int /*<<< orphan*/  op_to_portid; } ;
struct csio_hw {TYPE_4__* pport; } ;
typedef  void* fw_port_cap32_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_8__ {scalar_t__ mod_type; scalar_t__ link_status; int /*<<< orphan*/  link_speed; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FW_DEBUG_CMD ; 
 scalar_t__ FW_PORT_ACTION_GET_PORT_INFO ; 
 scalar_t__ FW_PORT_ACTION_GET_PORT_INFO32 ; 
 scalar_t__ FW_PORT_CMD ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (void*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(struct csio_hw *hw, __be64 *cmd)
{
	uint8_t opcode = *(uint8_t *)cmd;
	struct fw_port_cmd *pcmd;
	uint8_t port_id;
	uint32_t link_status;
	uint16_t action;
	uint8_t mod_type;
	fw_port_cap32_t linkattr;

	if (opcode == FW_PORT_CMD) {
		pcmd = (struct fw_port_cmd *)cmd;
		port_id = FUNC5(
				FUNC13(pcmd->op_to_portid));
		action = FUNC0(
				FUNC13(pcmd->action_to_len16));
		if (action != FW_PORT_ACTION_GET_PORT_INFO &&
		    action != FW_PORT_ACTION_GET_PORT_INFO32) {
			FUNC7(hw, "Unhandled FW_PORT_CMD action: %u\n",
				action);
			return -EINVAL;
		}

		if (action == FW_PORT_ACTION_GET_PORT_INFO) {
			link_status = FUNC13(pcmd->u.info.lstatus_to_modtype);
			mod_type = FUNC4(link_status);
			linkattr = FUNC12(link_status);

			hw->pport[port_id].link_status =
				FUNC2(link_status);
		} else {
			link_status =
				FUNC13(pcmd->u.info32.lstatus32_to_cbllen32);
			mod_type = FUNC3(link_status);
			linkattr = FUNC13(pcmd->u.info32.linkattr32);

			hw->pport[port_id].link_status =
				FUNC1(link_status);
		}

		hw->pport[port_id].link_speed = FUNC11(linkattr);

		FUNC8(hw, "Port:%x - LINK %s\n", port_id,
			hw->pport[port_id].link_status ? "UP" : "DOWN");

		if (mod_type != hw->pport[port_id].mod_type) {
			hw->pport[port_id].mod_type = mod_type;
			FUNC10(hw, port_id);
		}
	} else if (opcode == FW_DEBUG_CMD) {
		FUNC9(hw, cmd);
	} else {
		FUNC6(hw, "Gen MB can't handle op:0x%x on evtq.\n", opcode);
		return -EINVAL;
	}

	return 0;
}