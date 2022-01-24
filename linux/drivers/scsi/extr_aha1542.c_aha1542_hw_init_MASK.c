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
struct scsi_host_template {int dummy; } ;
struct mailbox {int dummy; } ;
struct device {int dummy; } ;
struct ccb {int dummy; } ;
struct aha1542_hostdata {int aha1542_last_mbi_used; int aha1542_last_mbo_used; scalar_t__ bios_translation; int /*<<< orphan*/  mb_handle; void* mb; int /*<<< orphan*/  ccb_handle; void* ccb; } ;
struct Scsi_Host {unsigned int unique_id; unsigned int io_port; int dma_channel; int /*<<< orphan*/  irq; int /*<<< orphan*/  this_id; int /*<<< orphan*/  n_io_port; } ;
typedef  int /*<<< orphan*/  dma_info ;

/* Variables and functions */
 int AHA1542_MAILBOXES ; 
 int /*<<< orphan*/  AHA1542_REGION_SIZE ; 
 scalar_t__ BIOS_TRANSLATION_25563 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_MODE_CASCADE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  aha1542_interrupt ; 
 scalar_t__ FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/ * bus_off ; 
 int /*<<< orphan*/ * bus_on ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dma_speed ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 unsigned int* io ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (struct Scsi_Host*,struct device*) ; 
 struct Scsi_Host* FUNC16 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC18 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 struct aha1542_hostdata* FUNC22 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int) ; 

__attribute__((used)) static struct Scsi_Host *FUNC24(struct scsi_host_template *tpnt, struct device *pdev, int indx)
{
	unsigned int base_io = io[indx];
	struct Scsi_Host *sh;
	struct aha1542_hostdata *aha1542;
	char dma_info[] = "no DMA";

	if (base_io == 0)
		return NULL;

	if (!FUNC14(base_io, AHA1542_REGION_SIZE, "aha1542"))
		return NULL;

	sh = FUNC16(tpnt, sizeof(struct aha1542_hostdata));
	if (!sh)
		goto release;
	aha1542 = FUNC22(sh);

	sh->unique_id = base_io;
	sh->io_port = base_io;
	sh->n_io_port = AHA1542_REGION_SIZE;
	aha1542->aha1542_last_mbi_used = 2 * AHA1542_MAILBOXES - 1;
	aha1542->aha1542_last_mbo_used = AHA1542_MAILBOXES - 1;

	if (!FUNC4(sh))
		goto unregister;

	FUNC3(sh, bus_on[indx], bus_off[indx], dma_speed[indx]);
	if (FUNC2(sh))
		goto unregister;
	if (FUNC1(sh) == -1)
		goto unregister;

	if (sh->dma_channel != 0xFF)
		FUNC23(dma_info, sizeof(dma_info), "DMA %d", sh->dma_channel);
	FUNC21(KERN_INFO, sh, "Adaptec AHA-1542 (SCSI-ID %d) at IO 0x%x, IRQ %d, %s\n",
				sh->this_id, base_io, sh->irq, dma_info);
	if (aha1542->bios_translation == BIOS_TRANSLATION_25563)
		FUNC21(KERN_INFO, sh, "Using extended bios translation\n");

	if (FUNC7(pdev, FUNC0(24)) < 0)
		goto unregister;

	aha1542->mb = FUNC5(pdev,
			AHA1542_MAILBOXES * 2 * sizeof(struct mailbox),
			&aha1542->mb_handle, GFP_KERNEL);
	if (!aha1542->mb)
		goto unregister;

	aha1542->ccb = FUNC5(pdev,
			AHA1542_MAILBOXES * sizeof(struct ccb),
			&aha1542->ccb_handle, GFP_KERNEL);
	if (!aha1542->ccb)
		goto free_mb;

	FUNC20(sh);

	if (FUNC13(sh->irq, aha1542_interrupt, 0, "aha1542", sh)) {
		FUNC21(KERN_ERR, sh, "Unable to allocate IRQ.\n");
		goto free_ccb;
	}
	if (sh->dma_channel != 0xFF) {
		if (FUNC12(sh->dma_channel, "aha1542")) {
			FUNC21(KERN_ERR, sh, "Unable to allocate DMA channel.\n");
			goto free_irq;
		}
		if (sh->dma_channel == 0 || sh->dma_channel >= 5) {
			FUNC19(sh->dma_channel, DMA_MODE_CASCADE);
			FUNC8(sh->dma_channel);
		}
	}

	if (FUNC15(sh, pdev))
		goto free_dma;

	FUNC18(sh);

	return sh;

free_dma:
	if (sh->dma_channel != 0xff)
		FUNC9(sh->dma_channel);
free_irq:
	FUNC10(sh->irq, sh);
free_ccb:
	FUNC6(pdev, AHA1542_MAILBOXES * sizeof(struct ccb),
			  aha1542->ccb, aha1542->ccb_handle);
free_mb:
	FUNC6(pdev, AHA1542_MAILBOXES * 2 * sizeof(struct mailbox),
			  aha1542->mb, aha1542->mb_handle);
unregister:
	FUNC17(sh);
release:
	FUNC11(base_io, AHA1542_REGION_SIZE);

	return NULL;
}