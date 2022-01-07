
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int dev; } ;
struct Scsi_Host {int dummy; } ;


 int fc_bsg_host_dispatch (struct Scsi_Host*,struct bsg_job*) ;
 int fc_bsg_rport_dispatch (struct Scsi_Host*,struct bsg_job*) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 scalar_t__ scsi_is_fc_rport (int ) ;

__attribute__((used)) static int fc_bsg_dispatch(struct bsg_job *job)
{
 struct Scsi_Host *shost = fc_bsg_to_shost(job);

 if (scsi_is_fc_rport(job->dev))
  return fc_bsg_rport_dispatch(shost, job);
 else
  return fc_bsg_host_dispatch(shost, job);
}
