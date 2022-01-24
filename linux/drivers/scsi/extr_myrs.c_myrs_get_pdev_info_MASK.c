#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
union myrs_sgl {TYPE_3__* sge; } ;
struct TYPE_8__ {unsigned char lun; unsigned char target; unsigned char channel; } ;
struct TYPE_7__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_10__ {int dma_size; union myrs_sgl dma_addr; int /*<<< orphan*/  ioctl_opcode; TYPE_2__ pdev; TYPE_1__ control; int /*<<< orphan*/  id; int /*<<< orphan*/  opcode; } ;
union myrs_cmd_mbox {TYPE_4__ pdev_info; } ;
struct myrs_pdev_info {int dummy; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {TYPE_6__* pdev; int /*<<< orphan*/  dcmd_mutex; TYPE_5__* host; struct myrs_cmdblk dcmd_blk; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  shost_gendev; } ;
struct TYPE_9__ {int sge_count; int /*<<< orphan*/  sge_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  MYRS_CMD_OP_IOCTL ; 
 int /*<<< orphan*/  MYRS_DCMD_TAG ; 
 int /*<<< orphan*/  MYRS_IOCTL_GET_PDEV_INFO_VALID ; 
 unsigned char MYRS_STATUS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct myrs_pdev_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct myrs_hba*,struct myrs_cmdblk*) ; 
 int /*<<< orphan*/  FUNC7 (struct myrs_cmdblk*) ; 

__attribute__((used)) static unsigned char FUNC8(struct myrs_hba *cs,
		unsigned char channel, unsigned char target, unsigned char lun,
		struct myrs_pdev_info *pdev_info)
{
	struct myrs_cmdblk *cmd_blk = &cs->dcmd_blk;
	union myrs_cmd_mbox *mbox = &cmd_blk->mbox;
	dma_addr_t pdev_info_addr;
	union myrs_sgl *sgl;
	unsigned char status;

	pdev_info_addr = FUNC1(&cs->pdev->dev, pdev_info,
					sizeof(struct myrs_pdev_info),
					DMA_FROM_DEVICE);
	if (FUNC2(&cs->pdev->dev, pdev_info_addr))
		return MYRS_STATUS_FAILED;

	FUNC4(&cs->dcmd_mutex);
	FUNC7(cmd_blk);
	mbox->pdev_info.opcode = MYRS_CMD_OP_IOCTL;
	mbox->pdev_info.id = MYRS_DCMD_TAG;
	mbox->pdev_info.control.dma_ctrl_to_host = true;
	mbox->pdev_info.control.no_autosense = true;
	mbox->pdev_info.dma_size = sizeof(struct myrs_pdev_info);
	mbox->pdev_info.pdev.lun = lun;
	mbox->pdev_info.pdev.target = target;
	mbox->pdev_info.pdev.channel = channel;
	mbox->pdev_info.ioctl_opcode = MYRS_IOCTL_GET_PDEV_INFO_VALID;
	sgl = &mbox->pdev_info.dma_addr;
	sgl->sge[0].sge_addr = pdev_info_addr;
	sgl->sge[0].sge_count = mbox->pdev_info.dma_size;
	FUNC0(&cs->host->shost_gendev,
		"Sending GetPhysicalDeviceInfoValid for pdev %d:%d:%d\n",
		channel, target, lun);
	FUNC6(cs, cmd_blk);
	status = cmd_blk->status;
	FUNC5(&cs->dcmd_mutex);
	FUNC3(&cs->pdev->dev, pdev_info_addr,
			 sizeof(struct myrs_pdev_info), DMA_FROM_DEVICE);
	return status;
}