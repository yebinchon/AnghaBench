
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int height; } ;
struct vc_data {int vc_hi_font_mask; int vc_scan_lines; TYPE_1__ vc_font; TYPE_3__* vc_sw; } ;
struct sisusb_usb_data {int font_slot; int current_font_512; int current_font_height; int sisusb_cursor_size_from; int sisusb_cursor_size_to; int lock; scalar_t__ vrambase; } ;
struct TYPE_6__ {int (* con_cursor ) (struct vc_data*,int ) ;} ;
struct TYPE_5__ {struct vc_data* d; } ;


 int CM_DRAW ;
 int EINVAL ;
 int EIO ;
 int MAX_NR_CONSOLES ;
 int SISAR ;
 int SISCR ;
 int SISGR ;
 int SISINPSTAT ;
 int SISSR ;
 scalar_t__ con_is_visible (struct vc_data*) ;
 int mutex_unlock (int *) ;
 TYPE_3__ sisusb_con ;
 int sisusb_getidxreg (struct sisusb_usb_data*,int ,int,unsigned char*) ;
 int sisusb_getreg (struct sisusb_usb_data*,int ,int *) ;
 int sisusb_readb (struct sisusb_usb_data*,scalar_t__,int *) ;
 int sisusb_setidxreg (struct sisusb_usb_data*,int ,int,unsigned char) ;
 int sisusb_setreg (struct sisusb_usb_data*,int ,int) ;
 int sisusb_writeb (struct sisusb_usb_data*,scalar_t__,int ) ;
 int stub1 (struct vc_data*,int ) ;
 TYPE_2__* vc_cons ;
 int vc_resize (struct vc_data*,int ,int) ;

int
sisusbcon_do_font_op(struct sisusb_usb_data *sisusb, int set, int slot,
   u8 *arg, int cmapsz, int ch512, int dorecalc,
   struct vc_data *c, int fh, int uplock)
{
 int font_select = 0x00, i, err = 0;
 u32 offset = 0;
 u8 dummy;
 if ((slot != 0 && slot != 2) || !fh) {
  if (uplock)
   mutex_unlock(&sisusb->lock);
  return -EINVAL;
 }

 if (set)
  sisusb->font_slot = slot;


 if (slot == 0)
  ch512 = 0;
 else
  offset = 4 * cmapsz;

 font_select = (slot == 0) ? 0x00 : (ch512 ? 0x0e : 0x0a);

 err |= sisusb_setidxreg(sisusb, SISSR, 0x00, 0x01);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x02, 0x04);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x04, 0x07);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x00, 0x03);

 if (err)
  goto font_op_error;

 err |= sisusb_setidxreg(sisusb, SISGR, 0x04, 0x03);
 err |= sisusb_setidxreg(sisusb, SISGR, 0x05, 0x00);
 err |= sisusb_setidxreg(sisusb, SISGR, 0x06, 0x00);

 if (err)
  goto font_op_error;

 if (arg) {
  if (set)
   for (i = 0; i < cmapsz; i++) {
    err |= sisusb_writeb(sisusb,
     sisusb->vrambase + offset + i,
     arg[i]);
    if (err)
     break;
   }
  else
   for (i = 0; i < cmapsz; i++) {
    err |= sisusb_readb(sisusb,
     sisusb->vrambase + offset + i,
     &arg[i]);
    if (err)
     break;
   }






  if (ch512) {
   if (set)
    for (i = 0; i < cmapsz; i++) {
     err |= sisusb_writeb(sisusb,
      sisusb->vrambase + offset +
       (2 * cmapsz) + i,
      arg[cmapsz + i]);
     if (err)
      break;
    }
   else
    for (i = 0; i < cmapsz; i++) {
     err |= sisusb_readb(sisusb,
      sisusb->vrambase + offset +
       (2 * cmapsz) + i,
      &arg[cmapsz + i]);
     if (err)
      break;
    }
  }
 }

 if (err)
  goto font_op_error;

 err |= sisusb_setidxreg(sisusb, SISSR, 0x00, 0x01);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x02, 0x03);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x04, 0x03);
 if (set)
  sisusb_setidxreg(sisusb, SISSR, 0x03, font_select);
 err |= sisusb_setidxreg(sisusb, SISSR, 0x00, 0x03);

 if (err)
  goto font_op_error;

 err |= sisusb_setidxreg(sisusb, SISGR, 0x04, 0x00);
 err |= sisusb_setidxreg(sisusb, SISGR, 0x05, 0x10);
 err |= sisusb_setidxreg(sisusb, SISGR, 0x06, 0x06);

 if (err)
  goto font_op_error;

 if ((set) && (ch512 != sisusb->current_font_512)) {




  for (i = 0; i < MAX_NR_CONSOLES; i++) {
   struct vc_data *d = vc_cons[i].d;
   if (d && d->vc_sw == &sisusb_con)
    d->vc_hi_font_mask = ch512 ? 0x0800 : 0;
  }

  sisusb->current_font_512 = ch512;




  sisusb_getreg(sisusb, SISINPSTAT, &dummy);
  sisusb_setreg(sisusb, SISAR, 0x12);
  sisusb_setreg(sisusb, SISAR, ch512 ? 0x07 : 0x0f);

  sisusb_getreg(sisusb, SISINPSTAT, &dummy);
  sisusb_setreg(sisusb, SISAR, 0x20);
  sisusb_getreg(sisusb, SISINPSTAT, &dummy);
 }

 if (dorecalc) {





  unsigned char ovr, vde, fsr;
  int rows = 0, maxscan = 0;

  if (c) {


   rows = c->vc_scan_lines / fh;

   maxscan = rows * fh - 1;




   sisusb_getidxreg(sisusb, SISCR, 0x07, &ovr);
   vde = maxscan & 0xff;
   ovr = (ovr & 0xbd) |
         ((maxscan & 0x100) >> 7) |
         ((maxscan & 0x200) >> 3);
   sisusb_setidxreg(sisusb, SISCR, 0x07, ovr);
   sisusb_setidxreg(sisusb, SISCR, 0x12, vde);

  }

  sisusb_getidxreg(sisusb, SISCR, 0x09, &fsr);
  fsr = (fsr & 0xe0) | (fh - 1);
  sisusb_setidxreg(sisusb, SISCR, 0x09, fsr);
  sisusb->current_font_height = fh;

  sisusb->sisusb_cursor_size_from = -1;
  sisusb->sisusb_cursor_size_to = -1;

 }

 if (uplock)
  mutex_unlock(&sisusb->lock);

 if (dorecalc && c) {
  int rows = c->vc_scan_lines / fh;



  for (i = 0; i < MAX_NR_CONSOLES; i++) {
   struct vc_data *vc = vc_cons[i].d;

   if (vc && vc->vc_sw == &sisusb_con) {
    if (con_is_visible(vc)) {
     vc->vc_sw->con_cursor(vc, CM_DRAW);
    }
    vc->vc_font.height = fh;
    vc_resize(vc, 0, rows);
   }
  }
 }

 return 0;

font_op_error:
 if (uplock)
  mutex_unlock(&sisusb->lock);

 return -EIO;
}
