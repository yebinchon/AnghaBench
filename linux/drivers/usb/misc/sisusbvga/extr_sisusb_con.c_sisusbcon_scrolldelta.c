
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;
struct sisusb_usb_data {int lock; int scrbuf_size; scalar_t__ scrbuf; int con_rolled_over; } ;


 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;
 int sisusbcon_set_start_address (struct sisusb_usb_data*,struct vc_data*) ;
 int vc_scrolldelta_helper (struct vc_data*,int,int ,void*,int ) ;

__attribute__((used)) static void
sisusbcon_scrolldelta(struct vc_data *c, int lines)
{
 struct sisusb_usb_data *sisusb;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return;



 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }

 vc_scrolldelta_helper(c, lines, sisusb->con_rolled_over,
   (void *)sisusb->scrbuf, sisusb->scrbuf_size);

 sisusbcon_set_start_address(sisusb, c);

 mutex_unlock(&sisusb->lock);
}
