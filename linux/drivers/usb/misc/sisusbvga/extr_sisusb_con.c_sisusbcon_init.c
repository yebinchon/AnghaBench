
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct vc_data {size_t vc_num; int vc_can_do_color; int vc_complement_mask; int vc_hi_font_mask; int vc_scan_lines; int vc_cols; int vc_rows; int * vc_uni_pagedir_loc; TYPE_1__ vc_font; } ;
struct sisusb_usb_data {int haveconsole; int* havethisconsole; int current_font_height; int lock; int kref; scalar_t__ current_font_512; } ;


 int con_set_default_unimap (struct vc_data*) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb (size_t) ;
 int sisusb_sisusb_valid (struct sisusb_usb_data*) ;
 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void
sisusbcon_init(struct vc_data *c, int init)
{
 struct sisusb_usb_data *sisusb;
 int cols, rows;







 sisusb = sisusb_get_sisusb(c->vc_num);
 if (!sisusb)
  return;

 mutex_lock(&sisusb->lock);

 if (!sisusb_sisusb_valid(sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }

 c->vc_can_do_color = 1;

 c->vc_complement_mask = 0x7700;

 c->vc_hi_font_mask = sisusb->current_font_512 ? 0x0800 : 0;

 sisusb->haveconsole = 1;

 sisusb->havethisconsole[c->vc_num] = 1;


 c->vc_scan_lines = 400;

 c->vc_font.height = sisusb->current_font_height;


 cols = 80;
 rows = c->vc_scan_lines / c->vc_font.height;
 kref_get(&sisusb->kref);

 if (!*c->vc_uni_pagedir_loc)
  con_set_default_unimap(c);

 mutex_unlock(&sisusb->lock);

 if (init) {
  c->vc_cols = cols;
  c->vc_rows = rows;
 } else
  vc_resize(c, cols, rows);
}
