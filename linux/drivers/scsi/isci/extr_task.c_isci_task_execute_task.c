
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sas_task {int task_state_flags; int task_state_lock; int uldd_task; int dev; } ;
struct isci_remote_device {int flags; } ;
struct isci_host {int scic_lock; TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {int dev; } ;


 int IDEV_GONE ;
 int ISCI_TAG_TCI (scalar_t__) ;
 int SAM_STAT_TASK_ABORTED ;
 int SAS_DEVICE_UNKNOWN ;
 int SAS_QUEUE_FULL ;
 int SAS_TASK_AT_INITIATOR ;
 int SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_UNDELIVERED ;
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 int dev_dbg (int *,char*,struct sas_task*,int ,struct isci_remote_device*,int ,int ) ;
 struct isci_host* dev_to_ihost (int ) ;
 scalar_t__ isci_alloc_tag (struct isci_host*) ;
 int isci_device_io_ready (struct isci_remote_device*,struct sas_task*) ;
 struct isci_remote_device* isci_lookup_device (int ) ;
 int isci_put_device (struct isci_remote_device*) ;
 int isci_request_execute (struct isci_host*,struct isci_remote_device*,struct sas_task*,scalar_t__) ;
 int isci_task_refuse (struct isci_host*,struct sas_task*,int ,int ) ;
 int isci_tci_free (struct isci_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

int isci_task_execute_task(struct sas_task *task, gfp_t gfp_flags)
{
 struct isci_host *ihost = dev_to_ihost(task->dev);
 struct isci_remote_device *idev;
 unsigned long flags;
 enum sci_status status = SCI_FAILURE;
 bool io_ready;
 u16 tag;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 idev = isci_lookup_device(task->dev);
 io_ready = isci_device_io_ready(idev, task);
 tag = isci_alloc_tag(ihost);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 dev_dbg(&ihost->pdev->dev,
  "task: %p, dev: %p idev: %p:%#lx cmd = %p\n",
  task, task->dev, idev, idev ? idev->flags : 0,
  task->uldd_task);

 if (!idev) {
  isci_task_refuse(ihost, task, SAS_TASK_UNDELIVERED,
     SAS_DEVICE_UNKNOWN);
 } else if (!io_ready || tag == SCI_CONTROLLER_INVALID_IO_TAG) {



  isci_task_refuse(ihost, task, SAS_TASK_COMPLETE,
     SAS_QUEUE_FULL);
 } else {

  spin_lock_irqsave(&task->task_state_lock, flags);

  if (task->task_state_flags & SAS_TASK_STATE_ABORTED) {

   spin_unlock_irqrestore(&task->task_state_lock, flags);

   isci_task_refuse(ihost, task,
      SAS_TASK_UNDELIVERED,
      SAM_STAT_TASK_ABORTED);
  } else {
   task->task_state_flags |= SAS_TASK_AT_INITIATOR;
   spin_unlock_irqrestore(&task->task_state_lock, flags);


   status = isci_request_execute(ihost, idev, task, tag);

   if (status != SCI_SUCCESS) {
    spin_lock_irqsave(&task->task_state_lock, flags);

    task->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
    spin_unlock_irqrestore(&task->task_state_lock, flags);

    if (test_bit(IDEV_GONE, &idev->flags)) {



     isci_task_refuse(ihost, task,
      SAS_TASK_UNDELIVERED,
      SAS_DEVICE_UNKNOWN);
    } else {
     isci_task_refuse(ihost, task,
      SAS_TASK_COMPLETE,
      SAS_QUEUE_FULL);
    }
   }
  }
 }

 if (status != SCI_SUCCESS && tag != SCI_CONTROLLER_INVALID_IO_TAG) {
  spin_lock_irqsave(&ihost->scic_lock, flags);



  isci_tci_free(ihost, ISCI_TAG_TCI(tag));
  spin_unlock_irqrestore(&ihost->scic_lock, flags);
 }

 isci_put_device(idev);
 return 0;
}
