
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union myrs_sgl {TYPE_1__* sge; } ;
struct TYPE_4__ {int dma_size; unsigned int evnum_upper; unsigned int evnum_lower; union myrs_sgl dma_addr; int ioctl_opcode; scalar_t__ ctlr_num; int opcode; } ;
union myrs_cmd_mbox {TYPE_2__ get_event; } ;
struct pci_dev {int dev; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {struct myrs_cmdblk mcmd_blk; struct pci_dev* pdev; } ;
struct myrs_event {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int sge_count; int sge_addr; } ;


 int DMA_FROM_DEVICE ;
 int MYRS_CMD_OP_IOCTL ;
 int MYRS_IOCTL_GET_EVENT ;
 unsigned char MYRS_STATUS_FAILED ;
 int dma_map_single (int *,struct myrs_event*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;

__attribute__((used)) static unsigned char myrs_get_event(struct myrs_hba *cs,
  unsigned int event_num, struct myrs_event *event_buf)
{
 struct pci_dev *pdev = cs->pdev;
 dma_addr_t event_addr;
 struct myrs_cmdblk *cmd_blk = &cs->mcmd_blk;
 union myrs_cmd_mbox *mbox = &cmd_blk->mbox;
 union myrs_sgl *sgl;
 unsigned char status;

 event_addr = dma_map_single(&pdev->dev, event_buf,
        sizeof(struct myrs_event), DMA_FROM_DEVICE);
 if (dma_mapping_error(&pdev->dev, event_addr))
  return MYRS_STATUS_FAILED;

 mbox->get_event.opcode = MYRS_CMD_OP_IOCTL;
 mbox->get_event.dma_size = sizeof(struct myrs_event);
 mbox->get_event.evnum_upper = event_num >> 16;
 mbox->get_event.ctlr_num = 0;
 mbox->get_event.ioctl_opcode = MYRS_IOCTL_GET_EVENT;
 mbox->get_event.evnum_lower = event_num & 0xFFFF;
 sgl = &mbox->get_event.dma_addr;
 sgl->sge[0].sge_addr = event_addr;
 sgl->sge[0].sge_count = mbox->get_event.dma_size;
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 dma_unmap_single(&pdev->dev, event_addr,
    sizeof(struct myrs_event), DMA_FROM_DEVICE);

 return status;
}
