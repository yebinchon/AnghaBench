
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;
struct iscsi_host {int session_removal_wq; scalar_t__ num_sessions; int state; int lock; int workq; int workq_name; } ;
struct Scsi_Host {int host_no; } ;


 int ISCSI_HOST_SETUP ;
 int create_singlethread_workqueue (int ) ;
 int init_waitqueue_head (int *) ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;

struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
       int dd_data_size, bool xmit_can_sleep)
{
 struct Scsi_Host *shost;
 struct iscsi_host *ihost;

 shost = scsi_host_alloc(sht, sizeof(struct iscsi_host) + dd_data_size);
 if (!shost)
  return ((void*)0);
 ihost = shost_priv(shost);

 if (xmit_can_sleep) {
  snprintf(ihost->workq_name, sizeof(ihost->workq_name),
   "iscsi_q_%d", shost->host_no);
  ihost->workq = create_singlethread_workqueue(ihost->workq_name);
  if (!ihost->workq)
   goto free_host;
 }

 spin_lock_init(&ihost->lock);
 ihost->state = ISCSI_HOST_SETUP;
 ihost->num_sessions = 0;
 init_waitqueue_head(&ihost->session_removal_wq);
 return shost;

free_host:
 scsi_host_put(shost);
 return ((void*)0);
}
