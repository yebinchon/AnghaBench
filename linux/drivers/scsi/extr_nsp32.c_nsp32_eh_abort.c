
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_2__* device; } ;
struct TYPE_10__ {TYPE_6__* cur_target; TYPE_3__* cur_lunt; } ;
typedef TYPE_4__ nsp32_hw_data ;
struct TYPE_11__ {int sync_flag; } ;
struct TYPE_9__ {int * SCpnt; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {unsigned int io_port; scalar_t__ hostdata; } ;


 int BM_CNT ;
 int DID_ABORT ;
 int FAILED ;
 int KERN_WARNING ;
 int NSP32_DEBUG_BUSRESET ;
 int SDTR_INITIATOR ;
 int SDTR_TARGET ;
 int SUCCESS ;
 int TRANSFER_CONTROL ;
 int nsp32_dbg (int ,char*) ;
 int nsp32_msg (int ,char*) ;
 int nsp32_scsi_done (struct scsi_cmnd*) ;
 int nsp32_set_async (TYPE_4__*,TYPE_6__*) ;
 int nsp32_write2 (unsigned int,int ,int ) ;

__attribute__((used)) static int nsp32_eh_abort(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;

 nsp32_msg(KERN_WARNING, "abort");

 if (data->cur_lunt->SCpnt == ((void*)0)) {
  nsp32_dbg(NSP32_DEBUG_BUSRESET, "abort failed");
  return FAILED;
 }

 if (data->cur_target->sync_flag & (SDTR_INITIATOR | SDTR_TARGET)) {

  data->cur_target->sync_flag = 0;
  nsp32_set_async(data, data->cur_target);
 }

 nsp32_write2(base, TRANSFER_CONTROL, 0);
 nsp32_write2(base, BM_CNT, 0);

 SCpnt->result = DID_ABORT << 16;
 nsp32_scsi_done(SCpnt);

 nsp32_dbg(NSP32_DEBUG_BUSRESET, "abort success");
 return SUCCESS;
}
