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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct qcom_slim_ctrl {int /*<<< orphan*/  wd; int /*<<< orphan*/  rxwq; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrl; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MGR_INT_CLR ; 
 int /*<<< orphan*/  MGR_INT_RX_MSG_RCVD ; 
 scalar_t__ MGR_RX_MSG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
#define  SLIM_MSG_MC_REPLY_INFORMATION 130 
#define  SLIM_MSG_MC_REPLY_VALUE 129 
#define  SLIM_MSG_MC_REPORT_PRESENT 128 
 scalar_t__ SLIM_MSG_MT_CORE ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct qcom_slim_ctrl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(struct qcom_slim_ctrl *ctrl,
					   u32 stat)
{
	u32 *rx_buf, pkt[10];
	bool q_rx = false;
	u8 mc, mt, len;

	pkt[0] = FUNC7(ctrl->base + MGR_RX_MSG);
	mt = FUNC2(pkt[0]);
	len = FUNC3(pkt[0]);
	mc = FUNC1(pkt[0]>>8);

	/*
	 * this message cannot be handled by ISR, so
	 * let work-queue handle it
	 */
	if (mt == SLIM_MSG_MT_CORE && mc == SLIM_MSG_MC_REPORT_PRESENT) {
		rx_buf = (u32 *)FUNC8(ctrl);
		if (!rx_buf) {
			FUNC5(ctrl->dev, "dropping RX:0x%x due to RX full\n",
					pkt[0]);
			goto rx_ret_irq;
		}
		rx_buf[0] = pkt[0];

	} else {
		rx_buf = pkt;
	}

	FUNC4(rx_buf + 1, ctrl->base + MGR_RX_MSG + 4,
			FUNC0(len, 4));

	switch (mc) {

	case SLIM_MSG_MC_REPORT_PRESENT:
		q_rx = true;
		break;
	case SLIM_MSG_MC_REPLY_INFORMATION:
	case SLIM_MSG_MC_REPLY_VALUE:
		FUNC9(&ctrl->ctrl, (u8 *)(rx_buf + 1),
				  (u8)(*rx_buf >> 24), (len - 4));
		break;
	default:
		FUNC5(ctrl->dev, "unsupported MC,%x MT:%x\n",
			mc, mt);
		break;
	}
rx_ret_irq:
	FUNC10(MGR_INT_RX_MSG_RCVD, ctrl->base +
		       MGR_INT_CLR);
	if (q_rx)
		FUNC6(ctrl->rxwq, &ctrl->wd);

	return IRQ_HANDLED;
}