
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vio_dev {int dev; } ;
struct ibmvscsi_host_data {TYPE_1__* host; int host_list; int work_thread; int queue; int pool; } ;
struct TYPE_4__ {int host_lock; } ;


 int DID_ERROR ;
 struct ibmvscsi_host_data* dev_get_drvdata (int *) ;
 int ibmvscsi_driver_lock ;
 int ibmvscsi_release_crq_queue (int *,struct ibmvscsi_host_data*,int ) ;
 int kthread_stop (int ) ;
 int list_del (int *) ;
 int max_events ;
 int purge_requests (struct ibmvscsi_host_data*,int ) ;
 int release_event_pool (int *,struct ibmvscsi_host_data*) ;
 int scsi_host_put (TYPE_1__*) ;
 int scsi_remove_host (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int srp_remove_host (TYPE_1__*) ;
 int unmap_persist_bufs (struct ibmvscsi_host_data*) ;

__attribute__((used)) static int ibmvscsi_remove(struct vio_dev *vdev)
{
 struct ibmvscsi_host_data *hostdata = dev_get_drvdata(&vdev->dev);
 unsigned long flags;

 srp_remove_host(hostdata->host);
 scsi_remove_host(hostdata->host);

 purge_requests(hostdata, DID_ERROR);

 spin_lock_irqsave(hostdata->host->host_lock, flags);
 release_event_pool(&hostdata->pool, hostdata);
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);

 ibmvscsi_release_crq_queue(&hostdata->queue, hostdata,
     max_events);

 kthread_stop(hostdata->work_thread);
 unmap_persist_bufs(hostdata);

 spin_lock(&ibmvscsi_driver_lock);
 list_del(&hostdata->host_list);
 spin_unlock(&ibmvscsi_driver_lock);

 scsi_host_put(hostdata->host);

 return 0;
}
