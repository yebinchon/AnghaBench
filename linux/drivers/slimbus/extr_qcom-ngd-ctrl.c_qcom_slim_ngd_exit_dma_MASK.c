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
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/ * dma_rx_channel; int /*<<< orphan*/ * dma_tx_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qcom_slim_ngd_ctrl *ctrl)
{
	if (ctrl->dma_rx_channel) {
		FUNC1(ctrl->dma_rx_channel);
		FUNC0(ctrl->dma_rx_channel);
	}

	if (ctrl->dma_tx_channel) {
		FUNC1(ctrl->dma_tx_channel);
		FUNC0(ctrl->dma_tx_channel);
	}

	ctrl->dma_tx_channel = ctrl->dma_rx_channel = NULL;

	return 0;
}