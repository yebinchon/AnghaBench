
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct fsa_dev_info {int valid; } ;
struct aac_dev {struct fsa_dev_info* fsa_dev; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int DID_NO_CONNECT ;
 int aac_scsi_cmd (struct scsi_cmnd*) ;
 size_t scmd_id (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_probe_container_callback2(struct scsi_cmnd * scsicmd)
{
 struct fsa_dev_info *fsa_dev_ptr = ((struct aac_dev *)(scsicmd->device->host->hostdata))->fsa_dev;

 if ((fsa_dev_ptr[scmd_id(scsicmd)].valid & 1))
  return aac_scsi_cmd(scsicmd);

 scsicmd->result = DID_NO_CONNECT << 16;
 scsicmd->scsi_done(scsicmd);
 return 0;
}
