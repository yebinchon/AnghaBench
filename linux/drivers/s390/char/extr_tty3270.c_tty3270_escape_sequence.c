
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int esc_state; int saved_cx; int cx; int saved_cy; int cy; int* esc_par; int esc_npar; int esc_ques; int saved_f_color; int f_color; int saved_highlight; int highlight; int port; } ;


 int ESCAPE_NPAR ;
 int TAC_RESET ;
 int TAX_RESET ;
 int kbd_puts_queue (int *,char*) ;
 int memset (int*,int ,int) ;
 int sprintf (char*,char*,int,int) ;
 int tty3270_convert_line (struct tty3270*,int) ;
 int tty3270_cr (struct tty3270*) ;
 int tty3270_delete_characters (struct tty3270*,int) ;
 int tty3270_erase_characters (struct tty3270*,int) ;
 int tty3270_erase_display (struct tty3270*,int) ;
 int tty3270_erase_line (struct tty3270*,int) ;
 int tty3270_getpar (struct tty3270*,int) ;
 int tty3270_goto_xy (struct tty3270*,int,int) ;
 int tty3270_insert_characters (struct tty3270*,int) ;
 int tty3270_lf (struct tty3270*) ;
 int tty3270_ri (struct tty3270*) ;
 int tty3270_set_attributes (struct tty3270*) ;

__attribute__((used)) static void
tty3270_escape_sequence(struct tty3270 *tp, char ch)
{
 enum { ESnormal, ESesc, ESsquare, ESgetpars };

 if (tp->esc_state == ESnormal) {
  if (ch == 0x1b)

   tp->esc_state = ESesc;
  return;
 }
 if (tp->esc_state == ESesc) {
  tp->esc_state = ESnormal;
  switch (ch) {
  case '[':
   tp->esc_state = ESsquare;
   break;
  case 'E':
   tty3270_cr(tp);
   tty3270_lf(tp);
   break;
  case 'M':
   tty3270_ri(tp);
   break;
  case 'D':
   tty3270_lf(tp);
   break;
  case 'Z':
   kbd_puts_queue(&tp->port, "\033[?6c");
   break;
  case '7':
   tp->saved_cx = tp->cx;
   tp->saved_cy = tp->cy;
   tp->saved_highlight = tp->highlight;
   tp->saved_f_color = tp->f_color;
   break;
  case '8':
   tty3270_convert_line(tp, tp->cy);
   tty3270_goto_xy(tp, tp->saved_cx, tp->saved_cy);
   tp->highlight = tp->saved_highlight;
   tp->f_color = tp->saved_f_color;
   break;
  case 'c':
   tp->cx = tp->saved_cx = 0;
   tp->cy = tp->saved_cy = 0;
   tp->highlight = tp->saved_highlight = TAX_RESET;
   tp->f_color = tp->saved_f_color = TAC_RESET;
   tty3270_erase_display(tp, 2);
   break;
  }
  return;
 }
 if (tp->esc_state == ESsquare) {
  tp->esc_state = ESgetpars;
  memset(tp->esc_par, 0, sizeof(tp->esc_par));
  tp->esc_npar = 0;
  tp->esc_ques = (ch == '?');
  if (tp->esc_ques)
   return;
 }
 if (tp->esc_state == ESgetpars) {
  if (ch == ';' && tp->esc_npar < ESCAPE_NPAR - 1) {
   tp->esc_npar++;
   return;
  }
  if (ch >= '0' && ch <= '9') {
   tp->esc_par[tp->esc_npar] *= 10;
   tp->esc_par[tp->esc_npar] += ch - '0';
   return;
  }
 }
 tp->esc_state = ESnormal;
 if (ch == 'n' && !tp->esc_ques) {
  if (tp->esc_par[0] == 5)
   kbd_puts_queue(&tp->port, "\033[0n");
  else if (tp->esc_par[0] == 6) {
   char buf[40];
   sprintf(buf, "\033[%d;%dR", tp->cy + 1, tp->cx + 1);
   kbd_puts_queue(&tp->port, buf);
  }
  return;
 }
 if (tp->esc_ques)
  return;
 switch (ch) {
 case 'm':
  tty3270_set_attributes(tp);
  break;
 case 'H':
 case 'f':
  tty3270_goto_xy(tp, tty3270_getpar(tp, 1) - 1,
    tty3270_getpar(tp, 0) - 1);
  break;
 case 'd':
  tty3270_goto_xy(tp, tp->cx, tty3270_getpar(tp, 0) - 1);
  break;
 case 'A':
 case 'F':
  tty3270_goto_xy(tp, tp->cx, tp->cy - tty3270_getpar(tp, 0));
  break;
 case 'B':
 case 'e':
 case 'E':
  tty3270_goto_xy(tp, tp->cx, tp->cy + tty3270_getpar(tp, 0));
  break;
 case 'C':
 case 'a':
  tty3270_goto_xy(tp, tp->cx + tty3270_getpar(tp, 0), tp->cy);
  break;
 case 'D':
  tty3270_goto_xy(tp, tp->cx - tty3270_getpar(tp, 0), tp->cy);
  break;
 case 'G':
 case '`':
  tty3270_goto_xy(tp, tty3270_getpar(tp, 0), tp->cy);
  break;
 case 'X':
  tty3270_erase_characters(tp, tty3270_getpar(tp, 0));
  break;
 case 'J':
  tty3270_erase_display(tp, tp->esc_par[0]);
  break;
 case 'K':
  tty3270_erase_line(tp, tp->esc_par[0]);
  break;
 case 'P':
  tty3270_delete_characters(tp, tty3270_getpar(tp, 0));
  break;
 case '@':
  tty3270_insert_characters(tp, tty3270_getpar(tp, 0));
  break;
 case 's':
  tp->saved_cx = tp->cx;
  tp->saved_cy = tp->cy;
  tp->saved_highlight = tp->highlight;
  tp->saved_f_color = tp->f_color;
  break;
 case 'u':
  tty3270_convert_line(tp, tp->cy);
  tty3270_goto_xy(tp, tp->saved_cx, tp->saved_cy);
  tp->highlight = tp->saved_highlight;
  tp->f_color = tp->saved_f_color;
  break;
 }
}
