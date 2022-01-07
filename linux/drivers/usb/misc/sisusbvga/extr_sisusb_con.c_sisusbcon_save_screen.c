
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_screenbuf; scalar_t__ vc_screenbuf_size; int vc_num; } ;
struct sisusb_usb_data {int lock; scalar_t__ scrbuf_size; scalar_t__ scrbuf; } ;


 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;

__attribute__((used)) static void
sisusbcon_save_screen(struct vc_data *c)
{
 struct sisusb_usb_data *sisusb;
 int length;





 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return;



 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }


 length = min((int)c->vc_screenbuf_size,
   (int)(sisusb->scrbuf + sisusb->scrbuf_size - c->vc_origin));


 memcpy((u16 *)c->vc_screenbuf, (u16 *)c->vc_origin, length);

 mutex_unlock(&sisusb->lock);
}
