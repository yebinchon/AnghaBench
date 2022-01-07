
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phase; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct Scsi_Host {int dummy; } ;


 int AAC_OWNER_LOWLEVEL ;
 int FAILED ;
 scalar_t__ aac_scsi_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_queuecommand(struct Scsi_Host *shost,
       struct scsi_cmnd *cmd)
{
 int r = 0;
 cmd->SCp.phase = AAC_OWNER_LOWLEVEL;
 r = (aac_scsi_cmd(cmd) ? FAILED : 0);
 return r;
}
