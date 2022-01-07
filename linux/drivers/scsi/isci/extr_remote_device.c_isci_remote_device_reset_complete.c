
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int dummy; } ;
struct isci_host {int scic_lock; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int sci_remote_device_reset_complete (struct isci_remote_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum sci_status isci_remote_device_reset_complete(
 struct isci_host *ihost,
 struct isci_remote_device *idev)
{
 unsigned long flags;
 enum sci_status status;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 status = sci_remote_device_reset_complete(idev);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 return status;
}
