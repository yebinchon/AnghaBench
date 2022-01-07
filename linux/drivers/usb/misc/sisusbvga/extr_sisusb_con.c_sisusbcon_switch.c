
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {unsigned long vc_origin; scalar_t__ vc_screenbuf; scalar_t__ vc_screenbuf_size; int vc_num; } ;
struct sisusb_usb_data {unsigned long scrbuf; unsigned long scrbuf_size; int lock; TYPE_1__* sisusb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 int mutex_unlock (int *) ;
 int sisusb_copy_memory (struct sisusb_usb_data*,char*,int ,int) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 int sisusb_haddr (struct sisusb_usb_data*,struct vc_data*,int ,int ) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;

__attribute__((used)) static int
sisusbcon_switch(struct vc_data *c)
{
 struct sisusb_usb_data *sisusb;
 int length;






 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return 0;




 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return 0;
 }





 if (c->vc_origin == (unsigned long)c->vc_screenbuf) {
  mutex_unlock(&sisusb->lock);
  dev_dbg(&sisusb->sisusb_dev->dev, "ASSERT ORIGIN != SCREENBUF!\n");
  return 0;
 }


 length = min((int)c->vc_screenbuf_size,
   (int)(sisusb->scrbuf + sisusb->scrbuf_size - c->vc_origin));


 memcpy((u16 *)c->vc_origin, (u16 *)c->vc_screenbuf, length);

 sisusb_copy_memory(sisusb, (char *)c->vc_origin,
   sisusb_haddr(sisusb, c, 0, 0), length);

 mutex_unlock(&sisusb->lock);

 return 0;
}
