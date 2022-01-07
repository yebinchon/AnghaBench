
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {unsigned int sisusb_cursor_loc; int bad_cursor_pos; } ;


 int SISCR ;
 scalar_t__ sisusb_setidxreg (struct sisusb_usb_data*,int ,int,unsigned int) ;
 scalar_t__ sisusb_setidxregand (struct sisusb_usb_data*,int ,int,int) ;
 scalar_t__ sisusb_setidxregandor (struct sisusb_usb_data*,int ,int,int,int) ;

void
sisusb_set_cursor(struct sisusb_usb_data *sisusb, unsigned int location)
{
 if (sisusb->sisusb_cursor_loc == location)
  return;

 sisusb->sisusb_cursor_loc = location;






 if ((location & 0x0007) == 0x0007) {
  sisusb->bad_cursor_pos = 1;
  location--;
  if (sisusb_setidxregandor(sisusb, SISCR, 0x0b, 0x1f, 0x20))
   return;
 } else if (sisusb->bad_cursor_pos) {
  if (sisusb_setidxregand(sisusb, SISCR, 0x0b, 0x1f))
   return;
  sisusb->bad_cursor_pos = 0;
 }

 if (sisusb_setidxreg(sisusb, SISCR, 0x0e, (location >> 8)))
  return;
 sisusb_setidxreg(sisusb, SISCR, 0x0f, (location & 0xff));
}
