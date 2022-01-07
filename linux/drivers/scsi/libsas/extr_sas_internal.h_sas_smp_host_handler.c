
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int KERN_ERR ;
 int bsg_job_done (struct bsg_job*,int ,int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;

__attribute__((used)) static inline void sas_smp_host_handler(struct bsg_job *job,
  struct Scsi_Host *shost)
{
 shost_printk(KERN_ERR, shost,
  "Cannot send SMP to a sas host (not enabled in CONFIG)\n");
 bsg_job_done(job, -EINVAL, 0);
}
