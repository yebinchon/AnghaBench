
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_scan_lines; int vc_num; } ;
struct sisusb_usb_data {int current_font_height; int lock; } ;


 int EINVAL ;
 int ENODEV ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;

__attribute__((used)) static int
sisusbcon_resize(struct vc_data *c, unsigned int newcols, unsigned int newrows,
   unsigned int user)
{
 struct sisusb_usb_data *sisusb;
 int fh;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return -ENODEV;

 fh = sisusb->current_font_height;

 mutex_unlock(&sisusb->lock);
 if (newcols != 80 || c->vc_scan_lines / fh != newrows)
  return -EINVAL;

 return 0;
}
