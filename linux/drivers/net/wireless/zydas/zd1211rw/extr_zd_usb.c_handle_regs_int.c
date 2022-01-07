
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int length; int completion; int req_count; int req; int * buffer; } ;
struct zd_usb_interrupt {int read_regs_enabled; int lock; TYPE_1__ read_regs; scalar_t__ read_regs_int_overridden; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct zd_mac {int process_intr; int lock; int intr_buffer; } ;
struct urb {int actual_length; int transfer_buffer; struct zd_usb* context; } ;
typedef int __le16 ;


 scalar_t__ CR_INTERRUPT ;
 int USB_MAX_EP_INT_BUFFER ;
 int ZD_ASSERT (int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int check_read_regs (struct zd_usb*,int ,int ) ;
 int complete (int *) ;
 int handle_regs_int_override (struct urb*) ;
 int in_interrupt () ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zd_mac* zd_hw_mac (int ) ;
 int zd_usb_to_hw (struct zd_usb*) ;

__attribute__((used)) static inline void handle_regs_int(struct urb *urb)
{
 struct zd_usb *usb = urb->context;
 struct zd_usb_interrupt *intr = &usb->intr;
 unsigned long flags;
 int len;
 u16 int_num;

 ZD_ASSERT(in_interrupt());
 spin_lock_irqsave(&intr->lock, flags);

 int_num = le16_to_cpu(*(__le16 *)(urb->transfer_buffer+2));
 if (int_num == CR_INTERRUPT) {
  struct zd_mac *mac = zd_hw_mac(zd_usb_to_hw(urb->context));
  spin_lock(&mac->lock);
  memcpy(&mac->intr_buffer, urb->transfer_buffer,
    USB_MAX_EP_INT_BUFFER);
  spin_unlock(&mac->lock);
  schedule_work(&mac->process_intr);
 } else if (atomic_read(&intr->read_regs_enabled)) {
  len = urb->actual_length;
  intr->read_regs.length = urb->actual_length;
  if (len > sizeof(intr->read_regs.buffer))
   len = sizeof(intr->read_regs.buffer);

  memcpy(intr->read_regs.buffer, urb->transfer_buffer, len);







  if (!check_read_regs(usb, intr->read_regs.req,
      intr->read_regs.req_count))
   goto out;

  atomic_set(&intr->read_regs_enabled, 0);
  intr->read_regs_int_overridden = 0;
  complete(&intr->read_regs.completion);

  goto out;
 }

out:
 spin_unlock_irqrestore(&intr->lock, flags);


 if (int_num == CR_INTERRUPT && atomic_read(&intr->read_regs_enabled))
  handle_regs_int_override(urb);
}
