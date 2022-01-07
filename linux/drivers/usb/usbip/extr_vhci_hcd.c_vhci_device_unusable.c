
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {int lock; int status; } ;


 int VDEV_ST_ERROR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vhci_device_unusable(struct usbip_device *ud)
{
 unsigned long flags;

 spin_lock_irqsave(&ud->lock, flags);
 ud->status = VDEV_ST_ERROR;
 spin_unlock_irqrestore(&ud->lock, flags);
}
