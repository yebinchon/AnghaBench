#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union myrs_sgl {TYPE_3__* sge; } ;
struct TYPE_6__ {unsigned char target; unsigned char channel; unsigned char lun; } ;
struct TYPE_5__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_8__ {int dma_size; union myrs_sgl dma_addr; int /*<<< orphan*/  ioctl_opcode; TYPE_2__ pdev; TYPE_1__ control; int /*<<< orphan*/  opcode; } ;
union myrs_cmd_mbox {TYPE_4__ pdev_info; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {int /*<<< orphan*/  dcmd_mutex; struct myrs_cmdblk dcmd_blk; struct pci_dev* pdev; } ;
struct myrs_devmap {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int sge_count; int /*<<< orphan*/  sge_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  MYRS_CMD_OP_IOCTL ; 
 int /*<<< orphan*/  MYRS_IOCTL_XLATE_PDEV_TO_LDEV ; 
 unsigned char MYRS_STATUS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct myrs_devmap*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct myrs_devmap*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct myrs_hba*,struct myrs_cmdblk*) ; 

__attribute__((used)) static unsigned char FUNC7(struct myrs_hba *cs,
		unsigned char channel, unsigned char target, unsigned char lun,
		struct myrs_devmap *devmap)
{
	struct pci_dev *pdev = cs->pdev;
	dma_addr_t devmap_addr;
	struct myrs_cmdblk *cmd_blk;
	union myrs_cmd_mbox *mbox;
	union myrs_sgl *sgl;
	unsigned char status;

	FUNC3(devmap, 0x0, sizeof(struct myrs_devmap));
	devmap_addr = FUNC0(&pdev->dev, devmap,
				     sizeof(struct myrs_devmap),
				     DMA_FROM_DEVICE);
	if (FUNC1(&pdev->dev, devmap_addr))
		return MYRS_STATUS_FAILED;

	FUNC4(&cs->dcmd_mutex);
	cmd_blk = &cs->dcmd_blk;
	mbox = &cmd_blk->mbox;
	mbox->pdev_info.opcode = MYRS_CMD_OP_IOCTL;
	mbox->pdev_info.control.dma_ctrl_to_host = true;
	mbox->pdev_info.control.no_autosense = true;
	mbox->pdev_info.dma_size = sizeof(struct myrs_devmap);
	mbox->pdev_info.pdev.target = target;
	mbox->pdev_info.pdev.channel = channel;
	mbox->pdev_info.pdev.lun = lun;
	mbox->pdev_info.ioctl_opcode = MYRS_IOCTL_XLATE_PDEV_TO_LDEV;
	sgl = &mbox->pdev_info.dma_addr;
	sgl->sge[0].sge_addr = devmap_addr;
	sgl->sge[0].sge_count = mbox->pdev_info.dma_size;

	FUNC6(cs, cmd_blk);
	status = cmd_blk->status;
	FUNC5(&cs->dcmd_mutex);
	FUNC2(&pdev->dev, devmap_addr,
			 sizeof(struct myrs_devmap), DMA_FROM_DEVICE);
	return status;
}