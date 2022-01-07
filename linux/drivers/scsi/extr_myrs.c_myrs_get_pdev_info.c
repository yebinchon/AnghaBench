
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union myrs_sgl {TYPE_3__* sge; } ;
struct TYPE_8__ {unsigned char lun; unsigned char target; unsigned char channel; } ;
struct TYPE_7__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_10__ {int dma_size; union myrs_sgl dma_addr; int ioctl_opcode; TYPE_2__ pdev; TYPE_1__ control; int id; int opcode; } ;
union myrs_cmd_mbox {TYPE_4__ pdev_info; } ;
struct myrs_pdev_info {int dummy; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {TYPE_6__* pdev; int dcmd_mutex; TYPE_5__* host; struct myrs_cmdblk dcmd_blk; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int shost_gendev; } ;
struct TYPE_9__ {int sge_count; int sge_addr; } ;


 int DMA_FROM_DEVICE ;
 int MYRS_CMD_OP_IOCTL ;
 int MYRS_DCMD_TAG ;
 int MYRS_IOCTL_GET_PDEV_INFO_VALID ;
 unsigned char MYRS_STATUS_FAILED ;
 int dev_dbg (int *,char*,unsigned char,unsigned char,unsigned char) ;
 int dma_map_single (int *,struct myrs_pdev_info*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 int myrs_reset_cmd (struct myrs_cmdblk*) ;

__attribute__((used)) static unsigned char myrs_get_pdev_info(struct myrs_hba *cs,
  unsigned char channel, unsigned char target, unsigned char lun,
  struct myrs_pdev_info *pdev_info)
{
 struct myrs_cmdblk *cmd_blk = &cs->dcmd_blk;
 union myrs_cmd_mbox *mbox = &cmd_blk->mbox;
 dma_addr_t pdev_info_addr;
 union myrs_sgl *sgl;
 unsigned char status;

 pdev_info_addr = dma_map_single(&cs->pdev->dev, pdev_info,
     sizeof(struct myrs_pdev_info),
     DMA_FROM_DEVICE);
 if (dma_mapping_error(&cs->pdev->dev, pdev_info_addr))
  return MYRS_STATUS_FAILED;

 mutex_lock(&cs->dcmd_mutex);
 myrs_reset_cmd(cmd_blk);
 mbox->pdev_info.opcode = MYRS_CMD_OP_IOCTL;
 mbox->pdev_info.id = MYRS_DCMD_TAG;
 mbox->pdev_info.control.dma_ctrl_to_host = 1;
 mbox->pdev_info.control.no_autosense = 1;
 mbox->pdev_info.dma_size = sizeof(struct myrs_pdev_info);
 mbox->pdev_info.pdev.lun = lun;
 mbox->pdev_info.pdev.target = target;
 mbox->pdev_info.pdev.channel = channel;
 mbox->pdev_info.ioctl_opcode = MYRS_IOCTL_GET_PDEV_INFO_VALID;
 sgl = &mbox->pdev_info.dma_addr;
 sgl->sge[0].sge_addr = pdev_info_addr;
 sgl->sge[0].sge_count = mbox->pdev_info.dma_size;
 dev_dbg(&cs->host->shost_gendev,
  "Sending GetPhysicalDeviceInfoValid for pdev %d:%d:%d\n",
  channel, target, lun);
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 mutex_unlock(&cs->dcmd_mutex);
 dma_unmap_single(&cs->pdev->dev, pdev_info_addr,
    sizeof(struct myrs_pdev_info), DMA_FROM_DEVICE);
 return status;
}
