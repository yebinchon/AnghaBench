
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_rphy {int dummy; } ;
struct TYPE_5__ {int payload_len; } ;
struct bsg_job {int dev; TYPE_2__ reply_payload; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_4__ {int (* smp_handler ) (struct bsg_job*,struct Scsi_Host*,struct sas_rphy*) ;} ;


 int EINVAL ;
 int bsg_job_done (struct bsg_job*,int ,int ) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int dev_warn (int ,char*) ;
 int scsi_is_host_device (int ) ;
 int stub1 (struct bsg_job*,struct Scsi_Host*,struct sas_rphy*) ;
 TYPE_3__* to_sas_internal (int ) ;

__attribute__((used)) static int sas_smp_dispatch(struct bsg_job *job)
{
 struct Scsi_Host *shost = dev_to_shost(job->dev);
 struct sas_rphy *rphy = ((void*)0);

 if (!scsi_is_host_device(job->dev))
  rphy = dev_to_rphy(job->dev);

 if (!job->reply_payload.payload_len) {
  dev_warn(job->dev, "space for a smp response is missing\n");
  bsg_job_done(job, -EINVAL, 0);
  return 0;
 }

 to_sas_internal(shost->transportt)->f->smp_handler(job, shost, rphy);
 return 0;
}
