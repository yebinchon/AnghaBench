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
typedef  int u32 ;
struct qcom_slim_ctrl {int /*<<< orphan*/  dev; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ENOTCONN ; 
 scalar_t__ FRM_CFG ; 
 scalar_t__ FRM_IE_STAT ; 
 scalar_t__ FRM_INT_STAT ; 
 scalar_t__ FRM_STAT ; 
 scalar_t__ INTF_IE_STAT ; 
 scalar_t__ INTF_INT_STAT ; 
 scalar_t__ INTF_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MGR_IE_STAT ; 
 scalar_t__ MGR_INT_CLR ; 
 int MGR_INT_TX_MSG_SENT ; 
 int MGR_INT_TX_NACKED_2 ; 
 scalar_t__ MGR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_slim_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct qcom_slim_ctrl *ctrl,
					   u32 stat)
{
	int err = 0;

	if (stat & MGR_INT_TX_MSG_SENT)
		FUNC3(MGR_INT_TX_MSG_SENT,
			       ctrl->base + MGR_INT_CLR);

	if (stat & MGR_INT_TX_NACKED_2) {
		u32 mgr_stat = FUNC1(ctrl->base + MGR_STATUS);
		u32 mgr_ie_stat = FUNC1(ctrl->base + MGR_IE_STAT);
		u32 frm_stat = FUNC1(ctrl->base + FRM_STAT);
		u32 frm_cfg = FUNC1(ctrl->base + FRM_CFG);
		u32 frm_intr_stat = FUNC1(ctrl->base + FRM_INT_STAT);
		u32 frm_ie_stat = FUNC1(ctrl->base + FRM_IE_STAT);
		u32 intf_stat = FUNC1(ctrl->base + INTF_STAT);
		u32 intf_intr_stat = FUNC1(ctrl->base + INTF_INT_STAT);
		u32 intf_ie_stat = FUNC1(ctrl->base + INTF_IE_STAT);

		FUNC3(MGR_INT_TX_NACKED_2, ctrl->base + MGR_INT_CLR);

		FUNC0(ctrl->dev, "TX Nack MGR:int:0x%x, stat:0x%x\n",
			stat, mgr_stat);
		FUNC0(ctrl->dev, "TX Nack MGR:ie:0x%x\n", mgr_ie_stat);
		FUNC0(ctrl->dev, "TX Nack FRM:int:0x%x, stat:0x%x\n",
			frm_intr_stat, frm_stat);
		FUNC0(ctrl->dev, "TX Nack FRM:cfg:0x%x, ie:0x%x\n",
			frm_cfg, frm_ie_stat);
		FUNC0(ctrl->dev, "TX Nack INTF:intr:0x%x, stat:0x%x\n",
			intf_intr_stat, intf_stat);
		FUNC0(ctrl->dev, "TX Nack INTF:ie:0x%x\n",
			intf_ie_stat);
		err = -ENOTCONN;
	}

	FUNC2(ctrl, err);

	return IRQ_HANDLED;
}