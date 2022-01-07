
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_cookie; int user_callback; } ;
struct isci_remote_device {int flags; TYPE_1__ rnc; int abort_resume_cbparam; int abort_resume_cb; } ;
struct isci_host {int scic_lock; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int IDEV_ABORT_PATH_ACTIVE ;
 int IDEV_ABORT_PATH_RESUME_PENDING ;
 int SCI_SUCCESS ;
 int clear_bit (int ,int *) ;
 int isci_remote_device_resume_from_abort_complete ;
 int isci_remote_device_wait_for_resume_from_abort (struct isci_host*,struct isci_remote_device*) ;
 int sci_remote_device_resume (struct isci_remote_device*,int ,struct isci_remote_device*) ;
 int sci_remote_node_context_is_being_destroyed (TYPE_1__*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum sci_status isci_remote_device_resume_from_abort(
 struct isci_host *ihost,
 struct isci_remote_device *idev)
{
 unsigned long flags;
 enum sci_status status = SCI_SUCCESS;
 int destroyed;

 spin_lock_irqsave(&ihost->scic_lock, flags);



 idev->abort_resume_cb = idev->rnc.user_callback;
 idev->abort_resume_cbparam = idev->rnc.user_cookie;
 set_bit(IDEV_ABORT_PATH_RESUME_PENDING, &idev->flags);
 clear_bit(IDEV_ABORT_PATH_ACTIVE, &idev->flags);
 destroyed = sci_remote_node_context_is_being_destroyed(&idev->rnc);
 if (!destroyed)
  status = sci_remote_device_resume(
   idev, isci_remote_device_resume_from_abort_complete,
   idev);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);
 if (!destroyed && (status == SCI_SUCCESS))
  isci_remote_device_wait_for_resume_from_abort(ihost, idev);
 else
  clear_bit(IDEV_ABORT_PATH_RESUME_PENDING, &idev->flags);

 return status;
}
