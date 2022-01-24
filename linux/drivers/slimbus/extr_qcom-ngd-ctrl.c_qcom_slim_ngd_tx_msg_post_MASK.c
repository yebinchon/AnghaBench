#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qcom_slim_ngd_dma_desc {void* base; TYPE_1__* desc; scalar_t__ phys; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {void* tx_base; int /*<<< orphan*/  tx_buf_lock; int /*<<< orphan*/  dma_tx_channel; int /*<<< orphan*/  dev; scalar_t__ tx_phys_base; struct qcom_slim_ngd_dma_desc* txdesc; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; struct qcom_slim_ngd_dma_desc* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int SLIM_MSGQ_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  qcom_slim_ngd_tx_msg_dma_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct qcom_slim_ngd_ctrl *ctrl,
				     void *buf, int len)
{
	struct qcom_slim_ngd_dma_desc *desc;
	unsigned long flags;
	int index, offset;

	FUNC4(&ctrl->tx_buf_lock, flags);
	offset = buf - ctrl->tx_base;
	index = offset/SLIM_MSGQ_BUF_LEN;

	desc = &ctrl->txdesc[index];
	desc->phys = ctrl->tx_phys_base + offset;
	desc->base = ctrl->tx_base + offset;
	desc->ctrl = ctrl;
	len = (len + 3) & 0xfc;

	desc->desc = FUNC2(ctrl->dma_tx_channel,
						desc->phys, len,
						DMA_MEM_TO_DEV,
						DMA_PREP_INTERRUPT);
	if (!desc->desc) {
		FUNC0(ctrl->dev, "unable to prepare channel\n");
		FUNC5(&ctrl->tx_buf_lock, flags);
		return -EINVAL;
	}

	desc->desc->callback = qcom_slim_ngd_tx_msg_dma_cb;
	desc->desc->callback_param = desc;
	desc->desc->cookie = FUNC3(desc->desc);
	FUNC1(ctrl->dma_tx_channel);
	FUNC5(&ctrl->tx_buf_lock, flags);

	return 0;
}