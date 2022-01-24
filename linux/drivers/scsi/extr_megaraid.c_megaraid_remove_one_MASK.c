#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  mbox64_t ;
struct TYPE_6__ {int flag; int /*<<< orphan*/  una_mbox64_dma; int /*<<< orphan*/  una_mbox64; int /*<<< orphan*/  dev; int /*<<< orphan*/  scb_list; int /*<<< orphan*/  buf_dma_handle; int /*<<< orphan*/  mega_buffer; TYPE_1__* host; scalar_t__ base; } ;
typedef  TYPE_2__ adapter_t ;
struct TYPE_5__ {int host_no; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int BOARD_MEMMAP ; 
 int MEGA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  hba_count ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  mega_proc_dir_entry ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC13(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC6(pdev);
	adapter_t *adapter = (adapter_t *)host->hostdata;
	char buf[12] = { 0 };

	FUNC11(host);

	FUNC0(adapter);

	/* Free our resources */
	if (adapter->flag & BOARD_MEMMAP) {
		FUNC1((void *)adapter->base);
		FUNC7(adapter->host->base, 128);
	} else
		FUNC8(adapter->base, 16);

	FUNC3(adapter);

	FUNC12(buf, "hba%d", adapter->host->host_no);
	FUNC9(buf, mega_proc_dir_entry);

	FUNC5(adapter->dev, MEGA_BUFFER_SIZE,
			adapter->mega_buffer, adapter->buf_dma_handle);
	FUNC2(adapter->scb_list);
	FUNC5(adapter->dev, sizeof(mbox64_t),
			adapter->una_mbox64, adapter->una_mbox64_dma);

	FUNC10(host);
	FUNC4(pdev);

	hba_count--;
}