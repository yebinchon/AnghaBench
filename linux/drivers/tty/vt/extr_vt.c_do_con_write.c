
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u16 ;
struct vt_notifier_param {int c; struct vc_data* vc; } ;
struct vc_data {unsigned int vc_num; int vc_hi_font_mask; scalar_t__ vc_state; int vc_utf_count; int vc_utf_char; int vc_npar; unsigned char vc_attr; unsigned long vc_pos; int vc_x; int vc_cols; scalar_t__ vc_decawm; scalar_t__ vc_need_wrap; scalar_t__ vc_decim; int vc_can_do_color; scalar_t__ vc_disp_ctrl; scalar_t__ vc_utf; } ;
struct tty_struct {int stopped; struct vc_data* driver_data; } ;


 int CTRL_ACTION ;
 int CTRL_ALWAYS ;
 scalar_t__ ESnormal ;
 scalar_t__ NOTIFY_STOP ;
 int VT_PREWRITE ;
 scalar_t__ atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int con_flush (struct vc_data*,unsigned long,unsigned long,int*) ;
 scalar_t__ con_is_fg (struct vc_data*) ;
 scalar_t__ con_should_update (struct vc_data*) ;
 int console_conditional_schedule () ;
 int console_lock () ;
 int console_unlock () ;
 int conv_uni_to_pc (struct vc_data*,char) ;
 int cr (struct vc_data*) ;
 int do_con_trol (struct tty_struct*,struct vc_data*,int) ;
 int hide_cursor (struct vc_data*) ;
 scalar_t__ in_interrupt () ;
 int insert_char (struct vc_data*,int) ;
 scalar_t__ is_double_width (int) ;
 int lf (struct vc_data*) ;
 int might_sleep () ;
 int notify_update (struct vc_data*) ;
 int notify_write (struct vc_data*,int) ;
 int pr_err (char*) ;
 int pr_warn_once (char*,unsigned int) ;
 int scr_writew (unsigned char,int*) ;
 int vc_cons_allocated (unsigned int) ;
 int vc_translate (struct vc_data*,int) ;
 int vc_uniscr_debug_check (struct vc_data*) ;
 int vc_uniscr_putc (struct vc_data*,int) ;
 int vt_notifier_list ;

__attribute__((used)) static int do_con_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 int c, next_c, tc, ok, n = 0, draw_x = -1;
 unsigned int currcons;
 unsigned long draw_from = 0, draw_to = 0;
 struct vc_data *vc;
 unsigned char vc_attr;
 struct vt_notifier_param param;
 uint8_t rescan;
 uint8_t inverse;
 uint8_t width;
 u16 himask, charmask;

 if (in_interrupt())
  return count;

 might_sleep();

 console_lock();
 vc = tty->driver_data;
 if (vc == ((void*)0)) {
  pr_err("vt: argh, driver_data is NULL !\n");
  console_unlock();
  return 0;
 }

 currcons = vc->vc_num;
 if (!vc_cons_allocated(currcons)) {

  pr_warn_once("con_write: tty %d not allocated\n", currcons+1);
  console_unlock();
  return 0;
 }

 himask = vc->vc_hi_font_mask;
 charmask = himask ? 0x1ff : 0xff;


 if (con_is_fg(vc))
  hide_cursor(vc);

 param.vc = vc;

 while (!tty->stopped && count) {
  int orig = *buf;
  c = orig;
  buf++;
  n++;
  count--;
  rescan = 0;
  inverse = 0;
  width = 1;


  if (vc->vc_state != ESnormal) {
   tc = c;
  } else if (vc->vc_utf && !vc->vc_disp_ctrl) {






rescan_last_byte:
      if ((c & 0xc0) == 0x80) {

   static const uint32_t utf8_length_changes[] = { 0x0000007f, 0x000007ff, 0x0000ffff, 0x001fffff, 0x03ffffff, 0x7fffffff };
   if (vc->vc_utf_count) {
       vc->vc_utf_char = (vc->vc_utf_char << 6) | (c & 0x3f);
       vc->vc_npar++;
       if (--vc->vc_utf_count) {

    continue;
       }

       c = vc->vc_utf_char;

       if (c <= utf8_length_changes[vc->vc_npar - 1] ||
     c > utf8_length_changes[vc->vc_npar])
    c = 0xfffd;
   } else {

       vc->vc_utf_count = 0;
       c = 0xfffd;
   }
      } else {

   if (vc->vc_utf_count) {

       rescan = 1;
       vc->vc_utf_count = 0;
       c = 0xfffd;
   } else if (c > 0x7f) {

       vc->vc_npar = 0;
       if ((c & 0xe0) == 0xc0) {
    vc->vc_utf_count = 1;
    vc->vc_utf_char = (c & 0x1f);
       } else if ((c & 0xf0) == 0xe0) {
    vc->vc_utf_count = 2;
    vc->vc_utf_char = (c & 0x0f);
       } else if ((c & 0xf8) == 0xf0) {
    vc->vc_utf_count = 3;
    vc->vc_utf_char = (c & 0x07);
       } else if ((c & 0xfc) == 0xf8) {
    vc->vc_utf_count = 4;
    vc->vc_utf_char = (c & 0x03);
       } else if ((c & 0xfe) == 0xfc) {
    vc->vc_utf_count = 5;
    vc->vc_utf_char = (c & 0x01);
       } else {

    c = 0xfffd;
       }
       if (vc->vc_utf_count) {

    continue;
       }
   }

      }



      if ((c >= 0xd800 && c <= 0xdfff) || c == 0xfffe || c == 0xffff)
   c = 0xfffd;
      tc = c;
  } else {
      tc = vc_translate(vc, c);
  }

  param.c = tc;
  if (atomic_notifier_call_chain(&vt_notifier_list, VT_PREWRITE,
     &param) == NOTIFY_STOP)
   continue;
                ok = tc && (c >= 32 ||
       !(vc->vc_disp_ctrl ? (CTRL_ALWAYS >> c) & 1 :
      vc->vc_utf || ((CTRL_ACTION >> c) & 1)))
   && (c != 127 || vc->vc_disp_ctrl)
   && (c != 128+27);

  if (vc->vc_state == ESnormal && ok) {
   if (vc->vc_utf && !vc->vc_disp_ctrl) {
    if (is_double_width(c))
     width = 2;
   }

   tc = conv_uni_to_pc(vc, tc);
   if (tc & ~charmask) {
    if (tc == -1 || tc == -2) {
        continue;
    }

    if ((!(vc->vc_utf && !vc->vc_disp_ctrl) || c < 128) && !(c & ~charmask)) {





        tc = c;
    } else {

        tc = conv_uni_to_pc(vc, 0xfffd);
        if (tc < 0) {
     inverse = 1;
     tc = conv_uni_to_pc(vc, '?');
     if (tc < 0) tc = '?';
        }
    }
   }

   if (!inverse) {
    vc_attr = vc->vc_attr;
   } else {

    if (!vc->vc_can_do_color) {
     vc_attr = (vc->vc_attr) ^ 0x08;
    } else if (vc->vc_hi_font_mask == 0x100) {
     vc_attr = ((vc->vc_attr) & 0x11) | (((vc->vc_attr) & 0xe0) >> 4) | (((vc->vc_attr) & 0x0e) << 4);
    } else {
     vc_attr = ((vc->vc_attr) & 0x88) | (((vc->vc_attr) & 0x70) >> 4) | (((vc->vc_attr) & 0x07) << 4);
    }
    con_flush(vc, draw_from, draw_to, &draw_x);
   }

   next_c = c;
   while (1) {
    if (vc->vc_need_wrap || vc->vc_decim)
     con_flush(vc, draw_from, draw_to,
       &draw_x);
    if (vc->vc_need_wrap) {
     cr(vc);
     lf(vc);
    }
    if (vc->vc_decim)
     insert_char(vc, 1);
    vc_uniscr_putc(vc, next_c);
    scr_writew(himask ?
          ((vc_attr << 8) & ~himask) + ((tc & 0x100) ? himask : 0) + (tc & 0xff) :
          (vc_attr << 8) + tc,
        (u16 *) vc->vc_pos);
    if (con_should_update(vc) && draw_x < 0) {
     draw_x = vc->vc_x;
     draw_from = vc->vc_pos;
    }
    if (vc->vc_x == vc->vc_cols - 1) {
     vc->vc_need_wrap = vc->vc_decawm;
     draw_to = vc->vc_pos + 2;
    } else {
     vc->vc_x++;
     draw_to = (vc->vc_pos += 2);
    }

    if (!--width) break;

    tc = conv_uni_to_pc(vc, ' ');
    if (tc < 0) tc = ' ';
    next_c = ' ';
   }
   notify_write(vc, c);

   if (inverse)
    con_flush(vc, draw_from, draw_to, &draw_x);

   if (rescan) {
    rescan = 0;
    inverse = 0;
    width = 1;
    c = orig;
    goto rescan_last_byte;
   }
   continue;
  }
  con_flush(vc, draw_from, draw_to, &draw_x);
  do_con_trol(tty, vc, orig);
 }
 con_flush(vc, draw_from, draw_to, &draw_x);
 vc_uniscr_debug_check(vc);
 console_conditional_schedule();
 notify_update(vc);
 console_unlock();
 return n;
}
