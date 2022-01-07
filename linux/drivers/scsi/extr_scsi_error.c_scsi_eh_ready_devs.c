
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int scsi_eh_bus_device_reset (struct Scsi_Host*,struct list_head*,struct list_head*) ;
 int scsi_eh_bus_reset (struct Scsi_Host*,struct list_head*,struct list_head*) ;
 int scsi_eh_host_reset (struct Scsi_Host*,struct list_head*,struct list_head*) ;
 int scsi_eh_offline_sdevs (struct list_head*,struct list_head*) ;
 int scsi_eh_stu (struct Scsi_Host*,struct list_head*,struct list_head*) ;
 int scsi_eh_target_reset (struct Scsi_Host*,struct list_head*,struct list_head*) ;

void scsi_eh_ready_devs(struct Scsi_Host *shost,
   struct list_head *work_q,
   struct list_head *done_q)
{
 if (!scsi_eh_stu(shost, work_q, done_q))
  if (!scsi_eh_bus_device_reset(shost, work_q, done_q))
   if (!scsi_eh_target_reset(shost, work_q, done_q))
    if (!scsi_eh_bus_reset(shost, work_q, done_q))
     if (!scsi_eh_host_reset(shost, work_q, done_q))
      scsi_eh_offline_sdevs(work_q,
              done_q);
}
