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
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  dma_tx_channel; int /*<<< orphan*/  tx_buf_lock; scalar_t__ tx_head; scalar_t__ tx_tail; int /*<<< orphan*/  tx_base; int /*<<< orphan*/  tx_phys_base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QCOM_SLIM_NGD_DESC_NUM ; 
 int SLIM_MSGQ_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct qcom_slim_ngd_ctrl *ctrl)
{
	struct device *dev = ctrl->dev;
	unsigned long flags;
	int ret = 0;
	int size;

	ctrl->dma_tx_channel = FUNC3(dev, "tx");
	if (!ctrl->dma_tx_channel) {
		FUNC0(dev, "Failed to request dma channels");
		return -EINVAL;
	}

	size = ((QCOM_SLIM_NGD_DESC_NUM + 1) * SLIM_MSGQ_BUF_LEN);
	ctrl->tx_base = FUNC1(dev, size, &ctrl->tx_phys_base,
					   GFP_KERNEL);
	if (!ctrl->tx_base) {
		FUNC0(dev, "dma_alloc_coherent failed\n");
		ret = -EINVAL;
		goto rel_tx;
	}

	FUNC4(&ctrl->tx_buf_lock, flags);
	ctrl->tx_tail = 0;
	ctrl->tx_head = 0;
	FUNC5(&ctrl->tx_buf_lock, flags);

	return 0;
rel_tx:
	FUNC2(ctrl->dma_tx_channel);
	return ret;
}