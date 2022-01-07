
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sent_command; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__ SCp; } ;
struct fib {int flags; struct aac_dev* dev; scalar_t__ hw_fib_va; } ;
struct aac_hba_resp {int service_response; } ;
struct TYPE_3__ {struct aac_hba_resp err; } ;
struct aac_native_hba {TYPE_1__ resp; } ;
struct aac_dev {int dummy; } ;


 int COMMAND_COMPLETE ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int FIB_CONTEXT_FLAG_FASTRESP ;
 int FIB_CONTEXT_FLAG_NATIVE_HBA_TMF ;






 int MESSAGE_REJECT ;
 int WARN_ON (int ) ;
 int aac_fib_complete (struct fib*) ;
 int aac_valid_context (struct scsi_cmnd*,struct fib*) ;
 int hba_resp_task_complete (struct aac_dev*,struct scsi_cmnd*,struct aac_hba_resp*) ;
 int hba_resp_task_failure (struct aac_dev*,struct scsi_cmnd*,struct aac_hba_resp*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

void aac_hba_callback(void *context, struct fib *fibptr)
{
 struct aac_dev *dev;
 struct scsi_cmnd *scsicmd;

 struct aac_hba_resp *err =
   &((struct aac_native_hba *)fibptr->hw_fib_va)->resp.err;

 scsicmd = (struct scsi_cmnd *) context;

 if (!aac_valid_context(scsicmd, fibptr))
  return;

 WARN_ON(fibptr == ((void*)0));
 dev = fibptr->dev;

 if (!(fibptr->flags & FIB_CONTEXT_FLAG_NATIVE_HBA_TMF))
  scsi_dma_unmap(scsicmd);

 if (fibptr->flags & FIB_CONTEXT_FLAG_FASTRESP) {

  scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8;
  goto out;
 }

 switch (err->service_response) {
 case 132:
  hba_resp_task_complete(dev, scsicmd, err);
  break;
 case 133:
  hba_resp_task_failure(dev, scsicmd, err);
  break;
 case 129:
  scsicmd->result = DID_ERROR << 16 | MESSAGE_REJECT << 8;
  break;
 case 130:
  scsicmd->result = DID_NO_CONNECT << 16 | COMMAND_COMPLETE << 8;
  break;
 case 131:
 case 128:
  scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8;
  break;
 default:
  scsicmd->result = DID_ERROR << 16 | COMMAND_COMPLETE << 8;
  break;
 }

out:
 aac_fib_complete(fibptr);

 if (fibptr->flags & FIB_CONTEXT_FLAG_NATIVE_HBA_TMF)
  scsicmd->SCp.sent_command = 1;
 else
  scsicmd->scsi_done(scsicmd);
}
