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
struct qcom_glink {int /*<<< orphan*/  dev; int /*<<< orphan*/  mbox_chan; } ;
struct glink_msg {int /*<<< orphan*/  param2; int /*<<< orphan*/  param1; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  RPM_CMD_CLOSE 141 
#define  RPM_CMD_CLOSE_ACK 140 
#define  RPM_CMD_INTENT 139 
#define  RPM_CMD_OPEN 138 
#define  RPM_CMD_OPEN_ACK 137 
#define  RPM_CMD_READ_NOTIF 136 
#define  RPM_CMD_RX_DONE 135 
#define  RPM_CMD_RX_DONE_W_REUSE 134 
#define  RPM_CMD_RX_INTENT_REQ 133 
#define  RPM_CMD_RX_INTENT_REQ_ACK 132 
#define  RPM_CMD_TX_DATA 131 
#define  RPM_CMD_TX_DATA_CONT 130 
#define  RPM_CMD_VERSION 129 
#define  RPM_CMD_VERSION_ACK 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_glink*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_glink*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct qcom_glink*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_glink*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct qcom_glink*) ; 
 int FUNC11 (struct qcom_glink*,unsigned int) ; 
 int FUNC12 (struct qcom_glink*,unsigned int) ; 
 int FUNC13 (struct qcom_glink*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct qcom_glink*,struct glink_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct qcom_glink *glink = data;
	struct glink_msg msg;
	unsigned int param1;
	unsigned int param2;
	unsigned int avail;
	unsigned int cmd;
	int ret = 0;

	for (;;) {
		avail = FUNC10(glink);
		if (avail < sizeof(msg))
			break;

		FUNC14(glink, &msg, 0, sizeof(msg));

		cmd = FUNC2(msg.cmd);
		param1 = FUNC2(msg.param1);
		param2 = FUNC3(msg.param2);

		switch (cmd) {
		case RPM_CMD_VERSION:
		case RPM_CMD_VERSION_ACK:
		case RPM_CMD_CLOSE:
		case RPM_CMD_CLOSE_ACK:
		case RPM_CMD_RX_INTENT_REQ:
			ret = FUNC12(glink, 0);
			break;
		case RPM_CMD_OPEN_ACK:
			ret = FUNC13(glink, param1);
			FUNC9(glink, FUNC0(sizeof(msg), 8));
			break;
		case RPM_CMD_OPEN:
			ret = FUNC12(glink, param2);
			break;
		case RPM_CMD_TX_DATA:
		case RPM_CMD_TX_DATA_CONT:
			ret = FUNC11(glink, avail);
			break;
		case RPM_CMD_READ_NOTIF:
			FUNC9(glink, FUNC0(sizeof(msg), 8));

			FUNC5(glink->mbox_chan, NULL);
			FUNC4(glink->mbox_chan, 0);
			break;
		case RPM_CMD_INTENT:
			FUNC6(glink, param1, param2, avail);
			break;
		case RPM_CMD_RX_DONE:
			FUNC8(glink, param1, param2, false);
			FUNC9(glink, FUNC0(sizeof(msg), 8));
			break;
		case RPM_CMD_RX_DONE_W_REUSE:
			FUNC8(glink, param1, param2, true);
			FUNC9(glink, FUNC0(sizeof(msg), 8));
			break;
		case RPM_CMD_RX_INTENT_REQ_ACK:
			FUNC7(glink, param1, param2);
			FUNC9(glink, FUNC0(sizeof(msg), 8));
			break;
		default:
			FUNC1(glink->dev, "unhandled rx cmd: %d\n", cmd);
			ret = -EINVAL;
			break;
		}

		if (ret)
			break;
	}

	return IRQ_HANDLED;
}