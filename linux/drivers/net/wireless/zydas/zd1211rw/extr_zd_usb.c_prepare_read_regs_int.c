
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int req_count; int completion; struct usb_req_read_regs* req; } ;
struct zd_usb_interrupt {int lock; TYPE_1__ read_regs; int read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_req_read_regs {int dummy; } ;


 int atomic_set (int *,int) ;
 int reinit_completion (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void prepare_read_regs_int(struct zd_usb *usb,
      struct usb_req_read_regs *req,
      unsigned int count)
{
 struct zd_usb_interrupt *intr = &usb->intr;

 spin_lock_irq(&intr->lock);
 atomic_set(&intr->read_regs_enabled, 1);
 intr->read_regs.req = req;
 intr->read_regs.req_count = count;
 reinit_completion(&intr->read_regs.completion);
 spin_unlock_irq(&intr->lock);
}
