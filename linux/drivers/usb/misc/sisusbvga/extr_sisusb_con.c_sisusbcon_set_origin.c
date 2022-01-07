
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_visible_origin; int vc_origin; int vc_num; } ;
struct sisusb_usb_data {int lock; scalar_t__ con_rolled_over; int scrbuf; scalar_t__ con_blanked; } ;


 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;
 int sisusbcon_set_start_address (struct sisusb_usb_data*,struct vc_data*) ;

__attribute__((used)) static int
sisusbcon_set_origin(struct vc_data *c)
{
 struct sisusb_usb_data *sisusb;






 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return 0;



 if (sisusb_is_inactive(c, sisusb) || sisusb->con_blanked) {
  mutex_unlock(&sisusb->lock);
  return 0;
 }

 c->vc_origin = c->vc_visible_origin = sisusb->scrbuf;

 sisusbcon_set_start_address(sisusb, c);

 sisusb->con_rolled_over = 0;

 mutex_unlock(&sisusb->lock);

 return 1;
}
