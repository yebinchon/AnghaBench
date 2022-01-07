
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct scsi_cmnd {int result; unsigned char* host_scribble; TYPE_3__* device; int sc_data_direction; int sense_buffer; } ;
struct qlogicpti {int send_marker; size_t res_out_ptr; scalar_t__ qregs; int * cmd_count; TYPE_2__* op; int qpti_id; struct scsi_cmnd** cmd_slots; int * res_cpu; } ;
struct TYPE_4__ {scalar_t__ entry_type; } ;
struct Status_Entry {size_t handle; scalar_t__ completion_status; int status_flags; int state_flags; TYPE_1__ hdr; int req_sense_data; } ;
struct TYPE_6__ {size_t id; } ;
struct TYPE_5__ {int dev; } ;





 scalar_t__ CS_ABORTED ;
 scalar_t__ CS_RESET_OCCURRED ;
 int DID_ERROR ;
 scalar_t__ ENTRY_STATUS ;

 scalar_t__ HCCTRL ;
 size_t HCCTRL_CRIRQ ;


 scalar_t__ MBOX0 ;
 scalar_t__ MBOX5 ;
 size_t NEXT_RES_PTR (size_t) ;
 scalar_t__ SBUS_SEMAPHORE ;
 int SBUS_SEMAPHORE_LCK ;
 scalar_t__ SBUS_STAT ;
 int SBUS_STAT_RINT ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SF_GOT_SENSE ;
 int STF_BUS_RESET ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int qlogicpti_return_status (struct Status_Entry*,int ) ;
 int sbus_readw (scalar_t__) ;
 int sbus_writew (size_t,scalar_t__) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static struct scsi_cmnd *qlogicpti_intr_handler(struct qlogicpti *qpti)
{
 struct scsi_cmnd *Cmnd, *done_queue = ((void*)0);
 struct Status_Entry *sts;
 u_int in_ptr, out_ptr;

 if (!(sbus_readw(qpti->qregs + SBUS_STAT) & SBUS_STAT_RINT))
  return ((void*)0);

 in_ptr = sbus_readw(qpti->qregs + MBOX5);
 sbus_writew(HCCTRL_CRIRQ, qpti->qregs + HCCTRL);
 if (sbus_readw(qpti->qregs + SBUS_SEMAPHORE) & SBUS_SEMAPHORE_LCK) {
  switch (sbus_readw(qpti->qregs + MBOX0)) {
  case 133:
  case 130:
   qpti->send_marker = 1;
   break;
  case 128:
  case 129:
  case 132:
  case 131:
   break;
  };
  sbus_writew(0, qpti->qregs + SBUS_SEMAPHORE);
 }


 out_ptr = qpti->res_out_ptr;
 while (out_ptr != in_ptr) {
  u_int cmd_slot;

  sts = (struct Status_Entry *) &qpti->res_cpu[out_ptr];
  out_ptr = NEXT_RES_PTR(out_ptr);





  cmd_slot = sts->handle;
  Cmnd = qpti->cmd_slots[cmd_slot];
  qpti->cmd_slots[cmd_slot] = ((void*)0);

  if (sts->completion_status == CS_RESET_OCCURRED ||
      sts->completion_status == CS_ABORTED ||
      (sts->status_flags & STF_BUS_RESET))
   qpti->send_marker = 1;

  if (sts->state_flags & SF_GOT_SENSE)
   memcpy(Cmnd->sense_buffer, sts->req_sense_data,
          SCSI_SENSE_BUFFERSIZE);

  if (sts->hdr.entry_type == ENTRY_STATUS)
   Cmnd->result =
       qlogicpti_return_status(sts, qpti->qpti_id);
  else
   Cmnd->result = DID_ERROR << 16;

  if (scsi_bufflen(Cmnd))
   dma_unmap_sg(&qpti->op->dev,
         scsi_sglist(Cmnd), scsi_sg_count(Cmnd),
         Cmnd->sc_data_direction);

  qpti->cmd_count[Cmnd->device->id]--;
  sbus_writew(out_ptr, qpti->qregs + MBOX5);
  Cmnd->host_scribble = (unsigned char *) done_queue;
  done_queue = Cmnd;
 }
 qpti->res_out_ptr = out_ptr;

 return done_queue;
}
