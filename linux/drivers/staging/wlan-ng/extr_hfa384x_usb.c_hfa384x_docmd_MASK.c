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
struct usbctlx_completor {int dummy; } ;
struct usbctlx_cmd_completor {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmdresp; } ;
struct TYPE_4__ {void* parm2; void* parm1; void* parm0; void* cmd; void* type; } ;
struct TYPE_5__ {TYPE_1__ cmdreq; } ;
struct hfa384x_usbctlx {int outbufsize; TYPE_3__ inbuf; int /*<<< orphan*/ * usercb_data; int /*<<< orphan*/ * usercb; int /*<<< orphan*/ * cmdcb; int /*<<< orphan*/  reapable; TYPE_2__ outbuf; } ;
struct hfa384x_metacmd {int /*<<< orphan*/  result; int /*<<< orphan*/  parm2; int /*<<< orphan*/  parm1; int /*<<< orphan*/  parm0; int /*<<< orphan*/  cmd; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HFA384x_USB_CMDREQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfa384x*,struct hfa384x_usbctlx*,struct usbctlx_completor*) ; 
 int FUNC2 (struct hfa384x*,struct hfa384x_usbctlx*) ; 
 struct usbctlx_completor* FUNC3 (struct usbctlx_cmd_completor*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfa384x_usbctlx* FUNC6 () ; 

__attribute__((used)) static inline int
FUNC7(struct hfa384x *hw,
	      struct hfa384x_metacmd *cmd)
{
	int result;
	struct hfa384x_usbctlx *ctlx;

	ctlx = FUNC6();
	if (!ctlx) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.cmdreq.type = FUNC0(HFA384x_USB_CMDREQ);
	ctlx->outbuf.cmdreq.cmd = FUNC0(cmd->cmd);
	ctlx->outbuf.cmdreq.parm0 = FUNC0(cmd->parm0);
	ctlx->outbuf.cmdreq.parm1 = FUNC0(cmd->parm1);
	ctlx->outbuf.cmdreq.parm2 = FUNC0(cmd->parm2);

	ctlx->outbufsize = sizeof(ctlx->outbuf.cmdreq);

	FUNC5("cmdreq: cmd=0x%04x parm0=0x%04x parm1=0x%04x parm2=0x%04x\n",
		 cmd->cmd, cmd->parm0, cmd->parm1, cmd->parm2);

	ctlx->reapable = DOWAIT;
	ctlx->cmdcb = NULL;
	ctlx->usercb = NULL;
	ctlx->usercb_data = NULL;

	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else {
		struct usbctlx_cmd_completor cmd_completor;
		struct usbctlx_completor *completor;

		completor = FUNC3(&cmd_completor,
					       &ctlx->inbuf.cmdresp,
					       &cmd->result);

		result = FUNC1(hw, ctlx, completor);
	}

done:
	return result;
}