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
struct qcom_slim_ngd_dma_desc {int /*<<< orphan*/ * comp; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {int tx_head; int /*<<< orphan*/  tx_buf_lock; } ;

/* Variables and functions */
 int QCOM_SLIM_NGD_DESC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void *args)
{
	struct qcom_slim_ngd_dma_desc *desc = args;
	struct qcom_slim_ngd_ctrl *ctrl = desc->ctrl;
	unsigned long flags;

	FUNC1(&ctrl->tx_buf_lock, flags);

	if (desc->comp) {
		FUNC0(desc->comp);
		desc->comp = NULL;
	}

	ctrl->tx_head = (ctrl->tx_head + 1) % QCOM_SLIM_NGD_DESC_NUM;
	FUNC2(&ctrl->tx_buf_lock, flags);
}