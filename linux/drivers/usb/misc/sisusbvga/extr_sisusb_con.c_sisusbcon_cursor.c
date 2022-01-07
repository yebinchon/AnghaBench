
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_visible_origin; int vc_pos; int vc_cursor_type; TYPE_1__ vc_font; int vc_num; } ;
struct sisusb_usb_data {int sisusb_cursor_size_to; int scrbuf; int sisusb_cursor_size_from; int lock; } ;


 int CM_ERASE ;






 int SISCR ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;
 int sisusb_set_cursor (struct sisusb_usb_data*,int) ;
 int sisusb_setidxreg (struct sisusb_usb_data*,int ,int,int) ;
 int sisusb_setidxregandor (struct sisusb_usb_data*,int ,int,int,int) ;
 int sisusb_setidxregor (struct sisusb_usb_data*,int ,int,int) ;
 int sisusbcon_set_start_address (struct sisusb_usb_data*,struct vc_data*) ;

__attribute__((used)) static void
sisusbcon_cursor(struct vc_data *c, int mode)
{
 struct sisusb_usb_data *sisusb;
 int from, to, baseline;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return;



 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }

 if (c->vc_origin != c->vc_visible_origin) {
  c->vc_visible_origin = c->vc_origin;
  sisusbcon_set_start_address(sisusb, c);
 }

 if (mode == CM_ERASE) {
  sisusb_setidxregor(sisusb, SISCR, 0x0a, 0x20);
  sisusb->sisusb_cursor_size_to = -1;
  mutex_unlock(&sisusb->lock);
  return;
 }

 sisusb_set_cursor(sisusb, (c->vc_pos - sisusb->scrbuf) / 2);

 baseline = c->vc_font.height - (c->vc_font.height < 10 ? 1 : 2);

 switch (c->vc_cursor_type & 0x0f) {
  case 133: from = 1;
     to = c->vc_font.height;
     break;
  case 129: from = c->vc_font.height / 3;
     to = baseline;
     break;
  case 132: from = c->vc_font.height / 2;
     to = baseline;
     break;
  case 131: from = (c->vc_font.height * 2) / 3;
     to = baseline;
     break;
  case 130: from = 31;
     to = 30;
     break;
  default:
  case 128: from = baseline - 1;
     to = baseline;
     break;
 }

 if (sisusb->sisusb_cursor_size_from != from ||
     sisusb->sisusb_cursor_size_to != to) {

  sisusb_setidxreg(sisusb, SISCR, 0x0a, from);
  sisusb_setidxregandor(sisusb, SISCR, 0x0b, 0xe0, to);

  sisusb->sisusb_cursor_size_from = from;
  sisusb->sisusb_cursor_size_to = to;
 }

 mutex_unlock(&sisusb->lock);
}
