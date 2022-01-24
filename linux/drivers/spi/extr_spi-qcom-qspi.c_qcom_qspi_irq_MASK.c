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
struct TYPE_2__ {scalar_t__ dir; int /*<<< orphan*/  rem_bytes; } ;
struct qcom_qspi {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ base; TYPE_1__ xfer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HRESP_FROM_NOC_ERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MSTR_INT_EN ; 
 scalar_t__ MSTR_INT_STATUS ; 
 int QSPI_ERR_IRQS ; 
 scalar_t__ QSPI_WRITE ; 
 int RESP_FIFO_RDY ; 
 int RESP_FIFO_UNDERRUN ; 
 int WR_FIFO_EMPTY ; 
 int WR_FIFO_OVERRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_qspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_qspi*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	u32 int_status;
	struct qcom_qspi *ctrl = dev_id;
	irqreturn_t ret = IRQ_NONE;
	unsigned long flags;

	FUNC6(&ctrl->lock, flags);

	int_status = FUNC4(ctrl->base + MSTR_INT_STATUS);
	FUNC8(int_status, ctrl->base + MSTR_INT_STATUS);

	if (ctrl->xfer.dir == QSPI_WRITE) {
		if (int_status & WR_FIFO_EMPTY)
			ret = FUNC3(ctrl);
	} else {
		if (int_status & RESP_FIFO_RDY)
			ret = FUNC2(ctrl);
	}

	if (int_status & QSPI_ERR_IRQS) {
		if (int_status & RESP_FIFO_UNDERRUN)
			FUNC0(ctrl->dev, "IRQ error: FIFO underrun\n");
		if (int_status & WR_FIFO_OVERRUN)
			FUNC0(ctrl->dev, "IRQ error: FIFO overrun\n");
		if (int_status & HRESP_FROM_NOC_ERR)
			FUNC0(ctrl->dev, "IRQ error: NOC response error\n");
		ret = IRQ_HANDLED;
	}

	if (!ctrl->xfer.rem_bytes) {
		FUNC8(0, ctrl->base + MSTR_INT_EN);
		FUNC5(FUNC1(ctrl->dev));
	}

	FUNC7(&ctrl->lock, flags);
	return ret;
}