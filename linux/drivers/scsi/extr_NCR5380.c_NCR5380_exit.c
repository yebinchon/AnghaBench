
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int work_q; int main_task; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void NCR5380_exit(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);

 cancel_work_sync(&hostdata->main_task);
 destroy_workqueue(hostdata->work_q);
}
