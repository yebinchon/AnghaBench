
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvscsi_host_data {int action; TYPE_1__* host; int dev; int request_limit; int queue; } ;
struct TYPE_2__ {int host_lock; } ;






 int atomic_set (int *,int) ;
 int dev_err (int ,char*,char*) ;
 int ibmvscsi_reenable_crq_queue (int *,struct ibmvscsi_host_data*) ;
 int ibmvscsi_reset_crq_queue (int *,struct ibmvscsi_host_data*) ;
 int ibmvscsi_send_crq (struct ibmvscsi_host_data*,int,int ) ;
 int scsi_unblock_requests (TYPE_1__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int to_vio_dev (int ) ;
 int vio_enable_interrupts (int ) ;

__attribute__((used)) static void ibmvscsi_do_work(struct ibmvscsi_host_data *hostdata)
{
 unsigned long flags;
 int rc;
 char *action = "reset";

 spin_lock_irqsave(hostdata->host->host_lock, flags);
 switch (hostdata->action) {
 case 128:
  rc = 0;
  break;
 case 129:
  spin_unlock_irqrestore(hostdata->host->host_lock, flags);
  rc = ibmvscsi_reset_crq_queue(&hostdata->queue, hostdata);
  spin_lock_irqsave(hostdata->host->host_lock, flags);
  if (!rc)
   rc = ibmvscsi_send_crq(hostdata, 0xC001000000000000LL, 0);
  vio_enable_interrupts(to_vio_dev(hostdata->dev));
  break;
 case 130:
  action = "enable";
  spin_unlock_irqrestore(hostdata->host->host_lock, flags);
  rc = ibmvscsi_reenable_crq_queue(&hostdata->queue, hostdata);
  spin_lock_irqsave(hostdata->host->host_lock, flags);
  if (!rc)
   rc = ibmvscsi_send_crq(hostdata, 0xC001000000000000LL, 0);
  break;
 case 131:
 default:
  spin_unlock_irqrestore(hostdata->host->host_lock, flags);
  return;
 }

 hostdata->action = 131;

 if (rc) {
  atomic_set(&hostdata->request_limit, -1);
  dev_err(hostdata->dev, "error after %s\n", action);
 }
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);

 scsi_unblock_requests(hostdata->host);
}
