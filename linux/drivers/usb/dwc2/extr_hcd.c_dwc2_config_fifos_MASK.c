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
struct TYPE_2__ {scalar_t__ snpsid; } ;
struct dwc2_core_params {int host_rx_fifo_size; int host_nperio_tx_fifo_size; int host_perio_tx_fifo_size; scalar_t__ en_multiple_tx_fifo; int /*<<< orphan*/  enable_dynamic_fifo; } ;
struct dwc2_hsotg {TYPE_1__ hw_params; struct dwc2_core_params params; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DWC2_CORE_REV_2_91a ; 
 int FIFOSIZE_DEPTH_MASK ; 
 int FIFOSIZE_DEPTH_SHIFT ; 
 int FIFOSIZE_STARTADDR_MASK ; 
 int FIFOSIZE_STARTADDR_SHIFT ; 
 int /*<<< orphan*/  GDFIFOCFG ; 
 int GDFIFOCFG_EPINFOBASE_MASK ; 
 int GDFIFOCFG_EPINFOBASE_SHIFT ; 
 int /*<<< orphan*/  GNPTXFSIZ ; 
 int /*<<< orphan*/  GRXFSIZ ; 
 int GRXFSIZ_DEPTH_MASK ; 
 int GRXFSIZ_DEPTH_SHIFT ; 
 int /*<<< orphan*/  HPTXFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg)
{
	struct dwc2_core_params *params = &hsotg->params;
	u32 nptxfsiz, hptxfsiz, dfifocfg, grxfsiz;

	if (!params->enable_dynamic_fifo)
		return;

	FUNC1(hsotg);

	/* Rx FIFO */
	grxfsiz = FUNC2(hsotg, GRXFSIZ);
	FUNC0(hsotg->dev, "initial grxfsiz=%08x\n", grxfsiz);
	grxfsiz &= ~GRXFSIZ_DEPTH_MASK;
	grxfsiz |= params->host_rx_fifo_size <<
		   GRXFSIZ_DEPTH_SHIFT & GRXFSIZ_DEPTH_MASK;
	FUNC3(hsotg, grxfsiz, GRXFSIZ);
	FUNC0(hsotg->dev, "new grxfsiz=%08x\n",
		FUNC2(hsotg, GRXFSIZ));

	/* Non-periodic Tx FIFO */
	FUNC0(hsotg->dev, "initial gnptxfsiz=%08x\n",
		FUNC2(hsotg, GNPTXFSIZ));
	nptxfsiz = params->host_nperio_tx_fifo_size <<
		   FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
	nptxfsiz |= params->host_rx_fifo_size <<
		    FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
	FUNC3(hsotg, nptxfsiz, GNPTXFSIZ);
	FUNC0(hsotg->dev, "new gnptxfsiz=%08x\n",
		FUNC2(hsotg, GNPTXFSIZ));

	/* Periodic Tx FIFO */
	FUNC0(hsotg->dev, "initial hptxfsiz=%08x\n",
		FUNC2(hsotg, HPTXFSIZ));
	hptxfsiz = params->host_perio_tx_fifo_size <<
		   FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
	hptxfsiz |= (params->host_rx_fifo_size +
		     params->host_nperio_tx_fifo_size) <<
		    FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
	FUNC3(hsotg, hptxfsiz, HPTXFSIZ);
	FUNC0(hsotg->dev, "new hptxfsiz=%08x\n",
		FUNC2(hsotg, HPTXFSIZ));

	if (hsotg->params.en_multiple_tx_fifo &&
	    hsotg->hw_params.snpsid >= DWC2_CORE_REV_2_91a) {
		/*
		 * This feature was implemented in 2.91a version
		 * Global DFIFOCFG calculation for Host mode -
		 * include RxFIFO, NPTXFIFO and HPTXFIFO
		 */
		dfifocfg = FUNC2(hsotg, GDFIFOCFG);
		dfifocfg &= ~GDFIFOCFG_EPINFOBASE_MASK;
		dfifocfg |= (params->host_rx_fifo_size +
			     params->host_nperio_tx_fifo_size +
			     params->host_perio_tx_fifo_size) <<
			    GDFIFOCFG_EPINFOBASE_SHIFT &
			    GDFIFOCFG_EPINFOBASE_MASK;
		FUNC3(hsotg, dfifocfg, GDFIFOCFG);
	}
}