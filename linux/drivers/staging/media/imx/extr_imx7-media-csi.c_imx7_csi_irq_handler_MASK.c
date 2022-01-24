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
struct imx7_csi {int buf_num; int last_eof; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  last_eof_completion; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BIT_ADDR_CH_ERR_INT ; 
 int BIT_DMA_TSF_DONE_FB1 ; 
 int BIT_DMA_TSF_DONE_FB2 ; 
 int BIT_HRESP_ERR_INT ; 
 int BIT_RFF_OR_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx7_csi*) ; 
 int FUNC6 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC7 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct imx7_csi *csi =  data;
	u32 status;

	FUNC8(&csi->irqlock);

	status = FUNC6(csi);

	if (status & BIT_RFF_OR_INT) {
		FUNC1(csi->dev, "Rx fifo overflow\n");
		FUNC3(csi);
	}

	if (status & BIT_HRESP_ERR_INT) {
		FUNC1(csi->dev, "Hresponse error detected\n");
		FUNC3(csi);
	}

	if (status & BIT_ADDR_CH_ERR_INT) {
		FUNC4(csi);

		FUNC2(csi);

		FUNC5(csi);
	}

	if ((status & BIT_DMA_TSF_DONE_FB1) &&
	    (status & BIT_DMA_TSF_DONE_FB2)) {
		/*
		 * For both FB1 and FB2 interrupter bits set case,
		 * CSI DMA is work in one of FB1 and FB2 buffer,
		 * but software can not know the state.
		 * Skip it to avoid base address updated
		 * when csi work in field0 and field1 will write to
		 * new base address.
		 */
	} else if (status & BIT_DMA_TSF_DONE_FB1) {
		csi->buf_num = 0;
	} else if (status & BIT_DMA_TSF_DONE_FB2) {
		csi->buf_num = 1;
	}

	if ((status & BIT_DMA_TSF_DONE_FB1) ||
	    (status & BIT_DMA_TSF_DONE_FB2)) {
		FUNC7(csi);

		if (csi->last_eof) {
			FUNC0(&csi->last_eof_completion);
			csi->last_eof = false;
		}
	}

	FUNC9(&csi->irqlock);

	return IRQ_HANDLED;
}