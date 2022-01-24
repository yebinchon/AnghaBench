#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * SCMD; int /*<<< orphan*/ * SASR; } ;
typedef  TYPE_3__ wd33c93_regs ;
struct zorro_device_id {unsigned int driver_data; } ;
struct TYPE_5__ {unsigned long start; } ;
struct zorro_dev {int /*<<< orphan*/  slotaddr; TYPE_1__ resource; } ;
struct gvp11_scsiregs {int secret2; int secret3; int CNTR; int /*<<< orphan*/  SCMD; int /*<<< orphan*/  SASR; scalar_t__ BANK; scalar_t__ secret1; } ;
struct TYPE_6__ {unsigned int dma_xfer_mask; int no_sync; int /*<<< orphan*/  dma_mode; scalar_t__ fast; } ;
struct gvp11_hostdata {struct gvp11_scsiregs* regs; TYPE_2__ wh; } ;
struct Scsi_Host {int /*<<< orphan*/  unique_id; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_DMA ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GVP11_DMAC_BUSY ; 
 int GVP11_DMAC_INT_ENABLE ; 
 unsigned int GVP_SCSICLKMASK ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int /*<<< orphan*/  WD33C93_FS_12_15 ; 
 int /*<<< orphan*/  WD33C93_FS_8_10 ; 
 struct gvp11_scsiregs* FUNC0 (unsigned long) ; 
 int FUNC1 (struct gvp11_scsiregs*) ; 
 int /*<<< orphan*/  dma_setup ; 
 int /*<<< orphan*/  dma_stop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  gvp11_intr ; 
 int /*<<< orphan*/  gvp11_scsi_template ; 
 unsigned int gvp11_xfer_mask ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int,char*) ; 
 int FUNC6 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 struct gvp11_hostdata* FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct zorro_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct zorro_dev*,struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC14(struct zorro_dev *z, const struct zorro_device_id *ent)
{
	struct Scsi_Host *instance;
	unsigned long address;
	int error;
	unsigned int epc;
	unsigned int default_dma_xfer_mask;
	struct gvp11_hostdata *hdata;
	struct gvp11_scsiregs *regs;
	wd33c93_regs wdregs;

	default_dma_xfer_mask = ent->driver_data;

	/*
	 * Rumors state that some GVP ram boards use the same product
	 * code as the SCSI controllers. Therefore if the board-size
	 * is not 64KB we assume it is a ram board and bail out.
	 */
	if (FUNC12(z) != 0x10000)
		return -ENODEV;

	address = z->resource.start;
	if (!FUNC5(address, 256, "wd33c93"))
		return -EBUSY;

	regs = FUNC0(address);

	error = FUNC1(regs);
	if (error)
		goto fail_check_or_alloc;

	instance = FUNC7(&gvp11_scsi_template,
				   sizeof(struct gvp11_hostdata));
	if (!instance) {
		error = -ENOMEM;
		goto fail_check_or_alloc;
	}

	instance->irq = IRQ_AMIGA_PORTS;
	instance->unique_id = z->slotaddr;

	regs->secret2 = 1;
	regs->secret1 = 0;
	regs->secret3 = 15;
	while (regs->CNTR & GVP11_DMAC_BUSY)
		;
	regs->CNTR = 0;
	regs->BANK = 0;

	wdregs.SASR = &regs->SASR;
	wdregs.SCMD = &regs->SCMD;

	hdata = FUNC10(instance);
	if (gvp11_xfer_mask)
		hdata->wh.dma_xfer_mask = gvp11_xfer_mask;
	else
		hdata->wh.dma_xfer_mask = default_dma_xfer_mask;

	hdata->wh.no_sync = 0xff;
	hdata->wh.fast = 0;
	hdata->wh.dma_mode = CTRL_DMA;
	hdata->regs = regs;

	/*
	 * Check for 14MHz SCSI clock
	 */
	epc = *(unsigned short *)(FUNC0(address) + 0x8000);
	FUNC11(instance, wdregs, dma_setup, dma_stop,
		     (epc & GVP_SCSICLKMASK) ? WD33C93_FS_8_10
					     : WD33C93_FS_12_15);

	error = FUNC4(IRQ_AMIGA_PORTS, gvp11_intr, IRQF_SHARED,
			    "GVP11 SCSI", instance);
	if (error)
		goto fail_irq;

	regs->CNTR = GVP11_DMAC_INT_ENABLE;

	error = FUNC6(instance, NULL);
	if (error)
		goto fail_host;

	FUNC13(z, instance);
	FUNC9(instance);
	return 0;

fail_host:
	FUNC2(IRQ_AMIGA_PORTS, instance);
fail_irq:
	FUNC8(instance);
fail_check_or_alloc:
	FUNC3(address, 256);
	return error;
}