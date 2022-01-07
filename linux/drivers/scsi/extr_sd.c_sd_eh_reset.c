
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int ignore_medium_access_errors; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {int rq_disk; } ;


 struct scsi_disk* scsi_disk (int ) ;

__attribute__((used)) static void sd_eh_reset(struct scsi_cmnd *scmd)
{
 struct scsi_disk *sdkp = scsi_disk(scmd->request->rq_disk);


 sdkp->ignore_medium_access_errors = 0;
}
