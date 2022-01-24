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
struct qcom_slim_ngd_dma_desc {TYPE_1__* desc; scalar_t__ phys; scalar_t__ base; struct qcom_slim_ngd_ctrl* ctrl; } ;
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  dma_rx_channel; int /*<<< orphan*/  dev; scalar_t__ rx_base; scalar_t__ rx_phys_base; struct qcom_slim_ngd_dma_desc* rx_desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; struct qcom_slim_ngd_dma_desc* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int QCOM_SLIM_NGD_DESC_NUM ; 
 int SLIM_MSGQ_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  qcom_slim_ngd_rx_msgq_cb ; 

__attribute__((used)) static int FUNC4(struct qcom_slim_ngd_ctrl *ctrl)
{
	struct qcom_slim_ngd_dma_desc *desc;
	int i;

	for (i = 0; i < QCOM_SLIM_NGD_DESC_NUM; i++) {
		desc = &ctrl->rx_desc[i];
		desc->phys = ctrl->rx_phys_base + i * SLIM_MSGQ_BUF_LEN;
		desc->ctrl = ctrl;
		desc->base = ctrl->rx_base + i * SLIM_MSGQ_BUF_LEN;
		desc->desc = FUNC2(ctrl->dma_rx_channel,
						desc->phys, SLIM_MSGQ_BUF_LEN,
						DMA_DEV_TO_MEM,
						DMA_PREP_INTERRUPT);
		if (!desc->desc) {
			FUNC0(ctrl->dev, "Unable to prepare rx channel\n");
			return -EINVAL;
		}

		desc->desc->callback = qcom_slim_ngd_rx_msgq_cb;
		desc->desc->callback_param = desc;
		desc->desc->cookie = FUNC3(desc->desc);
	}
	FUNC1(ctrl->dma_rx_channel);

	return 0;
}