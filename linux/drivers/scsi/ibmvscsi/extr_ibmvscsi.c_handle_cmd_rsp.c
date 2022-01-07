
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct srp_rsp {scalar_t__ opcode; int status; int flags; int data_in_res_cnt; int data_out_res_cnt; int sense_data_len; int data; } ;
struct TYPE_8__ {int cmd; } ;
struct TYPE_9__ {TYPE_3__ srp; } ;
struct srp_event_struct {int (* cmnd_done ) (struct scsi_cmnd*) ;TYPE_5__* hostdata; TYPE_4__ iu; struct scsi_cmnd* cmnd; TYPE_2__* xfer_iu; } ;
struct scsi_cmnd {int result; int sense_buffer; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_6__ {struct srp_rsp rsp; } ;
struct TYPE_7__ {TYPE_1__ srp; } ;


 int CHECK_CONDITION ;
 scalar_t__ SRP_RSP ;
 int SRP_RSP_FLAG_DIOVER ;
 int SRP_RSP_FLAG_DOOVER ;
 int be32_to_cpu (int ) ;
 int dev_warn (int ,char*,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ printk_ratelimit () ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;
 int unmap_cmd_data (int *,struct srp_event_struct*,int ) ;

__attribute__((used)) static void handle_cmd_rsp(struct srp_event_struct *evt_struct)
{
 struct srp_rsp *rsp = &evt_struct->xfer_iu->srp.rsp;
 struct scsi_cmnd *cmnd = evt_struct->cmnd;

 if (unlikely(rsp->opcode != SRP_RSP)) {
  if (printk_ratelimit())
   dev_warn(evt_struct->hostdata->dev,
     "bad SRP RSP type %#02x\n", rsp->opcode);
 }

 if (cmnd) {
  cmnd->result |= rsp->status;
  if (((cmnd->result >> 1) & 0x1f) == CHECK_CONDITION)
   memcpy(cmnd->sense_buffer,
          rsp->data,
          be32_to_cpu(rsp->sense_data_len));
  unmap_cmd_data(&evt_struct->iu.srp.cmd,
          evt_struct,
          evt_struct->hostdata->dev);

  if (rsp->flags & SRP_RSP_FLAG_DOOVER)
   scsi_set_resid(cmnd,
           be32_to_cpu(rsp->data_out_res_cnt));
  else if (rsp->flags & SRP_RSP_FLAG_DIOVER)
   scsi_set_resid(cmnd, be32_to_cpu(rsp->data_in_res_cnt));
 }

 if (evt_struct->cmnd_done)
  evt_struct->cmnd_done(cmnd);
}
