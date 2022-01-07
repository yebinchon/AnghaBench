
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct usb_memory* vm_private_data; } ;
struct usb_memory {TYPE_1__* ps; int vma_use_count; } ;
struct TYPE_2__ {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usbdev_vm_open(struct vm_area_struct *vma)
{
 struct usb_memory *usbm = vma->vm_private_data;
 unsigned long flags;

 spin_lock_irqsave(&usbm->ps->lock, flags);
 ++usbm->vma_use_count;
 spin_unlock_irqrestore(&usbm->ps->lock, flags);
}
