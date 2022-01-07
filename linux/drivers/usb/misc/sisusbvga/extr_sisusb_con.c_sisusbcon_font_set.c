
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;
struct sisusb_usb_data {unsigned int font_backup_size; int font_backup_512; int font_backup_height; int * font_backup; } ;
struct console_font {unsigned int charcount; int width; int height; int data; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int KD_FONT_FLAG_DONT_RECALC ;
 int array_size (unsigned int,int) ;
 int memcpy (int *,int ,unsigned int) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 int sisusbcon_do_font_op (struct sisusb_usb_data*,int,int,int ,int,int,int,struct vc_data*,int ,int) ;
 int vfree (int *) ;
 int * vmalloc (int ) ;

__attribute__((used)) static int
sisusbcon_font_set(struct vc_data *c, struct console_font *font,
     unsigned int flags)
{
 struct sisusb_usb_data *sisusb;
 unsigned charcount = font->charcount;

 if (font->width != 8 || (charcount != 256 && charcount != 512))
  return -EINVAL;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return -ENODEV;







 if (sisusb->font_backup) {
  if (sisusb->font_backup_size < charcount) {
   vfree(sisusb->font_backup);
   sisusb->font_backup = ((void*)0);
  }
 }

 if (!sisusb->font_backup)
  sisusb->font_backup = vmalloc(array_size(charcount, 32));

 if (sisusb->font_backup) {
  memcpy(sisusb->font_backup, font->data, charcount * 32);
  sisusb->font_backup_size = charcount;
  sisusb->font_backup_height = font->height;
  sisusb->font_backup_512 = (charcount == 512) ? 1 : 0;
 }



 return sisusbcon_do_font_op(sisusb, 1, 2, font->data,
   8192, (charcount == 512),
   (!(flags & KD_FONT_FLAG_DONT_RECALC)) ? 1 : 0,
   c, font->height, 1);
}
