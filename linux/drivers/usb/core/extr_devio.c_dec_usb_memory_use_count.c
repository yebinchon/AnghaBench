
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_memory {scalar_t__ urb_use_count; scalar_t__ vma_use_count; scalar_t__ size; int dma_handle; int mem; int memlist; struct usb_dev_state* ps; } ;
struct usb_dev_state {int lock; int dev; } ;


 int kfree (struct usb_memory*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_free_coherent (int ,scalar_t__,int ,int ) ;
 int usbfs_decrease_memory_usage (scalar_t__) ;

__attribute__((used)) static void dec_usb_memory_use_count(struct usb_memory *usbm, int *count)
{
 struct usb_dev_state *ps = usbm->ps;
 unsigned long flags;

 spin_lock_irqsave(&ps->lock, flags);
 --*count;
 if (usbm->urb_use_count == 0 && usbm->vma_use_count == 0) {
  list_del(&usbm->memlist);
  spin_unlock_irqrestore(&ps->lock, flags);

  usb_free_coherent(ps->dev, usbm->size, usbm->mem,
    usbm->dma_handle);
  usbfs_decrease_memory_usage(
   usbm->size + sizeof(struct usb_memory));
  kfree(usbm);
 } else {
  spin_unlock_irqrestore(&ps->lock, flags);
 }
}
