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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct slim_val_inf {int start_offset; int /*<<< orphan*/  num_bytes; } ;
struct slim_msg_txn {int ec; scalar_t__ rl; int /*<<< orphan*/  mc; int /*<<< orphan*/  mt; } ;
struct slim_device {struct slim_controller* ctrl; int /*<<< orphan*/  laddr; } ;
struct slim_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slim_msg_txn,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct slim_val_inf*) ; 
 int EINVAL ; 
#define  SLIM_MSG_MC_CHANGE_VALUE 131 
#define  SLIM_MSG_MC_CLEAR_INFORMATION 130 
#define  SLIM_MSG_MC_REQUEST_CHANGE_VALUE 129 
#define  SLIM_MSG_MC_REQUEST_CLEAR_INFORMATION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct slim_controller*,struct slim_msg_txn*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct slim_controller*,struct slim_val_inf*,int /*<<< orphan*/ ) ; 
 struct slim_msg_txn txn_stack ; 

int FUNC6(struct slim_device *sbdev, struct slim_val_inf *msg,
		  u8 mc)
{
	FUNC0(txn_stack, mc, 6, sbdev->laddr, msg);
	struct slim_msg_txn *txn = &txn_stack;
	struct slim_controller *ctrl = sbdev->ctrl;
	int ret;
	u16 sl;

	if (!ctrl)
		return -EINVAL;

	ret = FUNC5(ctrl, msg, mc);
	if (ret)
		return ret;

	sl = FUNC3(msg->num_bytes);

	FUNC1(ctrl->dev, "SB xfer msg:os:%x, len:%d, MC:%x, sl:%x\n",
		msg->start_offset, msg->num_bytes, mc, sl);

	txn->ec = ((sl | (1 << 3)) | ((msg->start_offset & 0xFFF) << 4));

	switch (mc) {
	case SLIM_MSG_MC_REQUEST_CHANGE_VALUE:
	case SLIM_MSG_MC_CHANGE_VALUE:
	case SLIM_MSG_MC_REQUEST_CLEAR_INFORMATION:
	case SLIM_MSG_MC_CLEAR_INFORMATION:
		txn->rl += msg->num_bytes;
	default:
		break;
	}

	if (FUNC4(txn->mt, txn->mc))
		txn->rl++;

	return FUNC2(ctrl, txn);
}