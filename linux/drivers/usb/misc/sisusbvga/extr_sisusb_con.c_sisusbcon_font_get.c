
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct vc_data {TYPE_1__ vc_font; int vc_num; } ;
struct sisusb_usb_data {int lock; int font_backup; } ;
struct console_font {int width; int charcount; int data; int height; } ;


 int ENODEV ;
 int memcpy (int ,int ,int) ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;

__attribute__((used)) static int
sisusbcon_font_get(struct vc_data *c, struct console_font *font)
{
 struct sisusb_usb_data *sisusb;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return -ENODEV;



 font->width = 8;
 font->height = c->vc_font.height;
 font->charcount = 256;

 if (!font->data) {
  mutex_unlock(&sisusb->lock);
  return 0;
 }

 if (!sisusb->font_backup) {
  mutex_unlock(&sisusb->lock);
  return -ENODEV;
 }


 memcpy(font->data, sisusb->font_backup, 256 * 32);

 mutex_unlock(&sisusb->lock);

 return 0;
}
