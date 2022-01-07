
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct read_regs_int {scalar_t__ buffer; } ;
struct zd_usb_interrupt {int lock; int read_regs_int_overridden; struct read_regs_int read_regs; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_req_read_regs {int dummy; } ;
struct usb_int_regs {struct reg_data* regs; } ;
struct reg_data {int value; } ;


 int EIO ;
 int check_read_regs (struct zd_usb*,struct usb_req_read_regs*,unsigned int) ;
 int dev_dbg_f (int ,char*) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zd_usb_dev (struct zd_usb*) ;

__attribute__((used)) static int get_results(struct zd_usb *usb, u16 *values,
         struct usb_req_read_regs *req, unsigned int count,
         bool *retry)
{
 int r;
 int i;
 struct zd_usb_interrupt *intr = &usb->intr;
 struct read_regs_int *rr = &intr->read_regs;
 struct usb_int_regs *regs = (struct usb_int_regs *)rr->buffer;

 spin_lock_irq(&intr->lock);

 r = -EIO;


 *retry = !!intr->read_regs_int_overridden;
 if (*retry)
  goto error_unlock;

 if (!check_read_regs(usb, req, count)) {
  dev_dbg_f(zd_usb_dev(usb), "error: invalid read regs\n");
  goto error_unlock;
 }

 for (i = 0; i < count; i++) {
  struct reg_data *rd = &regs->regs[i];
  values[i] = le16_to_cpu(rd->value);
 }

 r = 0;
error_unlock:
 spin_unlock_irq(&intr->lock);
 return r;
}
