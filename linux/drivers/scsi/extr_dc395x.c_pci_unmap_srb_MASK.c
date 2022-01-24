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
struct scsi_cmnd {int sc_data_direction; } ;
struct ScsiReqBlk {scalar_t__ sg_bus_addr; struct scsi_cmnd* cmd; } ;
struct AdapterCtlBlk {TYPE_1__* dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_SG ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int PCI_DMA_NONE ; 
 int /*<<< orphan*/  SEGMENTX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb)
{
	struct scsi_cmnd *cmd = srb->cmd;
	enum dma_data_direction dir = cmd->sc_data_direction;

	if (FUNC4(cmd) && dir != PCI_DMA_NONE) {
		/* unmap DC395x SG list */
		FUNC1(DBG_SG, "pci_unmap_srb: list=%08x(%05x)\n",
			srb->sg_bus_addr, SEGMENTX_LEN);
		FUNC0(&acb->dev->dev, srb->sg_bus_addr, SEGMENTX_LEN,
				DMA_TO_DEVICE);
		FUNC1(DBG_SG, "pci_unmap_srb: segs=%i buffer=%p\n",
			   FUNC4(cmd), FUNC2(cmd));
		/* unmap the sg segments */
		FUNC3(cmd);
	}
}