
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ScsiReqBlk {scalar_t__ total_xfer_length; int sg_index; scalar_t__ sg_count; int sg_bus_addr; TYPE_3__* dcb; struct SGentry* segment_x; } ;
struct SGentry {scalar_t__ length; int address; } ;
struct TYPE_6__ {TYPE_2__* acb; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int DBG_0 ;
 int DMA_TO_DEVICE ;
 int SEGMENTX_LEN ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dma_sync_single_for_device (int *,int ,int ,int ) ;
 int dprintkdbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int sg_verify_length (struct ScsiReqBlk*) ;

__attribute__((used)) static void sg_update_list(struct ScsiReqBlk *srb, u32 left)
{
 u8 idx;
 u32 xferred = srb->total_xfer_length - left;
 struct SGentry *psge = srb->segment_x + srb->sg_index;

 dprintkdbg(DBG_0,
  "sg_update_list: Transferred %i of %i bytes, %i remain\n",
  xferred, srb->total_xfer_length, left);
 if (xferred == 0) {

  return;
 }

 sg_verify_length(srb);
 srb->total_xfer_length = left;
 for (idx = srb->sg_index; idx < srb->sg_count; idx++) {
  if (xferred >= psge->length) {

   xferred -= psge->length;
  } else {

   dma_sync_single_for_cpu(&srb->dcb->acb->dev->dev,
     srb->sg_bus_addr, SEGMENTX_LEN,
     DMA_TO_DEVICE);
   psge->length -= xferred;
   psge->address += xferred;
   srb->sg_index = idx;
   dma_sync_single_for_device(&srb->dcb->acb->dev->dev,
     srb->sg_bus_addr, SEGMENTX_LEN,
     DMA_TO_DEVICE);
   break;
  }
  psge++;
 }
 sg_verify_length(srb);
}
