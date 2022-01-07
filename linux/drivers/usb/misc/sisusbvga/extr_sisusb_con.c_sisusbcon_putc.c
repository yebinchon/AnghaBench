
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;
struct sisusb_usb_data {int lock; } ;


 int mutex_unlock (int *) ;
 int sisusb_copy_memory (struct sisusb_usb_data*,int ,int ,int) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 int sisusb_haddr (struct sisusb_usb_data*,struct vc_data*,int,int) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;
 int sisusb_vaddr (struct sisusb_usb_data*,struct vc_data*,int,int) ;

__attribute__((used)) static void
sisusbcon_putc(struct vc_data *c, int ch, int y, int x)
{
 struct sisusb_usb_data *sisusb;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return;


 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }

 sisusb_copy_memory(sisusb, sisusb_vaddr(sisusb, c, x, y),
    sisusb_haddr(sisusb, c, x, y), 2);

 mutex_unlock(&sisusb->lock);
}
