
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phase; } ;
struct scsi_cmnd {int result; TYPE_1__ SCp; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct fib {int dummy; } ;
struct aac_dev {scalar_t__ maximum_num_physicals; } ;
struct TYPE_4__ {int lun; int host; } ;


 int AAC_MAX_LUN ;
 int AAC_OWNER_FIRMWARE ;
 int DID_NO_CONNECT ;
 int EINPROGRESS ;
 int aac_adapter_hba (struct fib*,struct scsi_cmnd*) ;
 struct fib* aac_fib_alloc_tag (struct aac_dev*,struct scsi_cmnd*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int pr_warn (char*,int) ;
 scalar_t__ scmd_id (struct scsi_cmnd*) ;
 struct aac_dev* shost_priv (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_send_hba_fib(struct scsi_cmnd *scsicmd)
{
 struct fib *cmd_fibcontext;
 struct aac_dev *dev;
 int status;

 dev = shost_priv(scsicmd->device->host);
 if (scmd_id(scsicmd) >= dev->maximum_num_physicals ||
   scsicmd->device->lun > AAC_MAX_LUN - 1) {
  scsicmd->result = DID_NO_CONNECT << 16;
  scsicmd->scsi_done(scsicmd);
  return 0;
 }




 cmd_fibcontext = aac_fib_alloc_tag(dev, scsicmd);
 if (!cmd_fibcontext)
  return -1;

 scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;
 status = aac_adapter_hba(cmd_fibcontext, scsicmd);




 if (status == -EINPROGRESS)
  return 0;

 pr_warn("aac_hba_cmd_req: aac_fib_send failed with status: %d\n",
  status);
 aac_fib_complete(cmd_fibcontext);
 aac_fib_free(cmd_fibcontext);

 return -1;
}
