
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {int lock; int status; } ;


 int SDEV_ST_ERROR ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void stub_device_unusable(struct usbip_device *ud)
{
 spin_lock_irq(&ud->lock);
 ud->status = SDEV_ST_ERROR;
 spin_unlock_irq(&ud->lock);
}
