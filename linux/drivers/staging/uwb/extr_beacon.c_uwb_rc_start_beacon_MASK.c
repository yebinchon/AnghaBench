#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  wEvent; void* bEventType; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_3__ rceb; } ;
struct TYPE_5__ {void* wCommand; void* bCommandType; } ;
struct uwb_rc_cmd_start_beacon {TYPE_2__ rccb; int /*<<< orphan*/  bChannelNumber; void* wBPSTOffset; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* UWB_RC_CET_GENERAL ; 
 int /*<<< orphan*/  UWB_RC_CMD_START_BEACON ; 
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc_cmd_start_beacon*) ; 
 struct uwb_rc_cmd_start_beacon* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uwb_rc*,char*,TYPE_2__*,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct uwb_rc *rc, u16 bpst_offset, u8 channel)
{
	int result;
	struct uwb_rc_cmd_start_beacon *cmd;
	struct uwb_rc_evt_confirm reply;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;
	cmd->rccb.bCommandType = UWB_RC_CET_GENERAL;
	cmd->rccb.wCommand = FUNC0(UWB_RC_CMD_START_BEACON);
	cmd->wBPSTOffset = FUNC0(bpst_offset);
	cmd->bChannelNumber = channel;
	reply.rceb.bEventType = UWB_RC_CET_GENERAL;
	reply.rceb.wEvent = UWB_RC_CMD_START_BEACON;
	result = FUNC4(rc, "START-BEACON", &cmd->rccb, sizeof(*cmd),
			    &reply.rceb, sizeof(reply));
	if (result < 0)
		goto error_cmd;
	if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC1(&rc->uwb_dev.dev,
			"START-BEACON: command execution failed: %s (%d)\n",
			FUNC5(reply.bResultCode), reply.bResultCode);
		result = -EIO;
	}
error_cmd:
	FUNC2(cmd);
	return result;
}