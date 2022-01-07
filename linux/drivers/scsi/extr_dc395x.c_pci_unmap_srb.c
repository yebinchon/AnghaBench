
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; } ;
struct ScsiReqBlk {scalar_t__ sg_bus_addr; struct scsi_cmnd* cmd; } ;
struct AdapterCtlBlk {TYPE_1__* dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int dev; } ;


 int DBG_SG ;
 int DMA_TO_DEVICE ;
 int PCI_DMA_NONE ;
 int SEGMENTX_LEN ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int dprintkdbg (int ,char*,scalar_t__,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void pci_unmap_srb(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb)
{
 struct scsi_cmnd *cmd = srb->cmd;
 enum dma_data_direction dir = cmd->sc_data_direction;

 if (scsi_sg_count(cmd) && dir != PCI_DMA_NONE) {

  dprintkdbg(DBG_SG, "pci_unmap_srb: list=%08x(%05x)\n",
   srb->sg_bus_addr, SEGMENTX_LEN);
  dma_unmap_single(&acb->dev->dev, srb->sg_bus_addr, SEGMENTX_LEN,
    DMA_TO_DEVICE);
  dprintkdbg(DBG_SG, "pci_unmap_srb: segs=%i buffer=%p\n",
      scsi_sg_count(cmd), scsi_bufflen(cmd));

  scsi_dma_unmap(cmd);
 }
}
