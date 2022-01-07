
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct scsi_cmnd {struct scsi_cmnd* sense_buffer; TYPE_1__* device; } ;
struct ScsiReqBlk {int sg_count; int list; struct scsi_cmnd* cmd; scalar_t__ sg_index; TYPE_3__* segment_x; void* total_xfer_length; void* xferred; scalar_t__ target_status; scalar_t__ adapter_status; int flag; } ;
struct DeviceCtlBlk {int srb_waiting_list; int target_lun; int target_id; } ;
struct AdapterCtlBlk {TYPE_2__* dev; } ;
struct TYPE_6__ {int address; void* length; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ lun; int id; } ;


 int AUTO_REQSENSE ;
 int DBG_1 ;
 int DBG_SG ;
 int DC395x_MAX_SG_LISTENTRY ;
 int DMA_FROM_DEVICE ;
 int HZ ;
 int KERN_DEBUG ;
 void* SCSI_SENSE_BUFFERSIZE ;
 int dma_map_single (int *,struct scsi_cmnd*,void*,int ) ;
 int dprintkdbg (int ,char*,struct scsi_cmnd*,int ,void*) ;
 int dprintkl (int ,char*,struct scsi_cmnd*,int ,int ) ;
 int list_move (int *,int *) ;
 int memset (struct scsi_cmnd*,int ,void*) ;
 scalar_t__ start_scsi (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int waiting_set_timer (struct AdapterCtlBlk*,int) ;

__attribute__((used)) static void request_sense(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
  struct ScsiReqBlk *srb)
{
 struct scsi_cmnd *cmd = srb->cmd;
 dprintkdbg(DBG_1, "request_sense: (0x%p) <%02i-%i>\n",
  cmd, cmd->device->id, (u8)cmd->device->lun);

 srb->flag |= AUTO_REQSENSE;
 srb->adapter_status = 0;
 srb->target_status = 0;


 memset(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);


 srb->segment_x[DC395x_MAX_SG_LISTENTRY - 1].address =
     srb->segment_x[0].address;
 srb->segment_x[DC395x_MAX_SG_LISTENTRY - 1].length =
     srb->segment_x[0].length;
 srb->xferred = srb->total_xfer_length;

 srb->total_xfer_length = SCSI_SENSE_BUFFERSIZE;
 srb->segment_x[0].length = SCSI_SENSE_BUFFERSIZE;

 srb->segment_x[0].address = dma_map_single(&acb->dev->dev,
   cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
   DMA_FROM_DEVICE);
 dprintkdbg(DBG_SG, "request_sense: map buffer %p->%08x(%05x)\n",
        cmd->sense_buffer, srb->segment_x[0].address,
        SCSI_SENSE_BUFFERSIZE);
 srb->sg_count = 1;
 srb->sg_index = 0;

 if (start_scsi(acb, dcb, srb)) {
  dprintkl(KERN_DEBUG,
   "request_sense: (0x%p) failed <%02i-%i>\n",
   srb->cmd, dcb->target_id, dcb->target_lun);
  list_move(&srb->list, &dcb->srb_waiting_list);
  waiting_set_timer(acb, HZ / 100);
 }
}
