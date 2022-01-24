#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qcom_slim_ngd_ctrl {scalar_t__ state; TYPE_1__* ngd; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int NGD_CFG_ENABLE ; 
 int NGD_CFG_RX_MSGQ_EN ; 
 int NGD_CFG_TX_MSGQ_EN ; 
 scalar_t__ QCOM_SLIM_NGD_CTRL_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_slim_ngd_ctrl*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qcom_slim_ngd_ctrl *ctrl)
{
	u32 cfg = FUNC1(ctrl->ngd->base);

	if (ctrl->state == QCOM_SLIM_NGD_CTRL_DOWN)
		FUNC0(ctrl);

	/* By default enable message queues */
	cfg |= NGD_CFG_RX_MSGQ_EN;
	cfg |= NGD_CFG_TX_MSGQ_EN;

	/* Enable NGD if it's not already enabled*/
	if (!(cfg & NGD_CFG_ENABLE))
		cfg |= NGD_CFG_ENABLE;

	FUNC2(cfg, ctrl->ngd->base);
}