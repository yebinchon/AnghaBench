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
typedef  int u8 ;
typedef  int u16 ;
struct AdapterCtlBlk {TYPE_1__* active_dcb; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ active_srb; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int ABORTXFER ; 
 int /*<<< orphan*/  ABORT_DEV_ ; 
 int CLRXFIFO ; 
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSIINTERRUPT ; 
 int /*<<< orphan*/  TRM_S1040_DMA_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_DMA_STATUS ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_STATUS ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterCtlBlk*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct AdapterCtlBlk *acb = dev_id;
	u16 scsi_status;
	u8 dma_status;
	irqreturn_t handled = IRQ_NONE;

	/*
	 * Check for pending interrupt
	 */
	scsi_status = FUNC0(acb, TRM_S1040_SCSI_STATUS);
	dma_status = FUNC1(acb, TRM_S1040_DMA_STATUS);
	if (scsi_status & SCSIINTERRUPT) {
		/* interrupt pending - let's process it! */
		FUNC3(acb, scsi_status);
		handled = IRQ_HANDLED;
	}
	else if (dma_status & 0x20) {
		/* Error from the DMA engine */
		FUNC4(KERN_INFO, "Interrupt from DMA engine: 0x%02x!\n", dma_status);
#if 0
		dprintkl(KERN_INFO, "This means DMA error! Try to handle ...\n");
		if (acb->active_dcb) {
			acb->active_dcb-> flag |= ABORT_DEV_;
			if (acb->active_dcb->active_srb)
				enable_msgout_abort(acb, acb->active_dcb->active_srb);
		}
		DC395x_write8(acb, TRM_S1040_DMA_CONTROL, ABORTXFER | CLRXFIFO);
#else
		FUNC4(KERN_INFO, "Ignoring DMA error (probably a bad thing) ...\n");
		acb = NULL;
#endif
		handled = IRQ_HANDLED;
	}

	return handled;
}