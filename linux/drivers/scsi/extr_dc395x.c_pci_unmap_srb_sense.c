
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ScsiReqBlk {int flag; TYPE_2__* segment_x; int xferred; int total_xfer_length; } ;
struct AdapterCtlBlk {TYPE_1__* dev; } ;
struct TYPE_4__ {int length; int address; } ;
struct TYPE_3__ {int dev; } ;


 int AUTO_REQSENSE ;
 int DBG_SG ;
 int DC395x_MAX_SG_LISTENTRY ;
 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int dprintkdbg (int ,char*,int ) ;

__attribute__((used)) static void pci_unmap_srb_sense(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb)
{
 if (!(srb->flag & AUTO_REQSENSE))
  return;

 dprintkdbg(DBG_SG, "pci_unmap_srb_sense: buffer=%08x\n",
        srb->segment_x[0].address);
 dma_unmap_single(&acb->dev->dev, srb->segment_x[0].address,
    srb->segment_x[0].length, DMA_FROM_DEVICE);

 srb->total_xfer_length = srb->xferred;
 srb->segment_x[0].address =
     srb->segment_x[DC395x_MAX_SG_LISTENTRY - 1].address;
 srb->segment_x[0].length =
     srb->segment_x[DC395x_MAX_SG_LISTENTRY - 1].length;
}
