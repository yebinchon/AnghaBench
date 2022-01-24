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
struct TYPE_2__ {int /*<<< orphan*/  this_residual; int /*<<< orphan*/  ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct gvp11_scsiregs {int SP_DMA; int /*<<< orphan*/  CNTR; } ;
struct WD33C93_hostdata {scalar_t__ dma_buffer_pool; scalar_t__ dma_bounce_len; int /*<<< orphan*/ * dma_bounce_buffer; scalar_t__ dma_dir; } ;
struct gvp11_hostdata {struct gvp11_scsiregs* regs; struct WD33C93_hostdata wh; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ BUF_SCSI_ALLOCED ; 
 int /*<<< orphan*/  GVP11_DMAC_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gvp11_hostdata* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC4(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
		     int status)
{
	struct gvp11_hostdata *hdata = FUNC3(instance);
	struct WD33C93_hostdata *wh = &hdata->wh;
	struct gvp11_scsiregs *regs = hdata->regs;

	/* stop DMA */
	regs->SP_DMA = 1;
	/* remove write bit from CONTROL bits */
	regs->CNTR = GVP11_DMAC_INT_ENABLE;

	/* copy from a bounce buffer, if necessary */
	if (status && wh->dma_bounce_buffer) {
		if (wh->dma_dir && SCpnt)
			FUNC2(SCpnt->SCp.ptr, wh->dma_bounce_buffer,
			       SCpnt->SCp.this_residual);

		if (wh->dma_buffer_pool == BUF_SCSI_ALLOCED)
			FUNC1(wh->dma_bounce_buffer);
		else
			FUNC0(wh->dma_bounce_buffer);

		wh->dma_bounce_buffer = NULL;
		wh->dma_bounce_len = 0;
	}
}