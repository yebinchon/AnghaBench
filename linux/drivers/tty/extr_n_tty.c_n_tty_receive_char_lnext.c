
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ lnext; } ;


 scalar_t__ I_ISTRIP (struct tty_struct*) ;
 scalar_t__ I_IUCLC (struct tty_struct*) ;
 scalar_t__ L_IEXTEN (struct tty_struct*) ;
 char TTY_NORMAL ;
 scalar_t__ likely (int) ;
 int n_tty_receive_char (struct tty_struct*,unsigned char) ;
 int n_tty_receive_char_flagged (struct tty_struct*,unsigned char,char) ;
 unsigned char tolower (unsigned char) ;

__attribute__((used)) static void
n_tty_receive_char_lnext(struct tty_struct *tty, unsigned char c, char flag)
{
 struct n_tty_data *ldata = tty->disc_data;

 ldata->lnext = 0;
 if (likely(flag == TTY_NORMAL)) {
  if (I_ISTRIP(tty))
   c &= 0x7f;
  if (I_IUCLC(tty) && L_IEXTEN(tty))
   c = tolower(c);
  n_tty_receive_char(tty, c);
 } else
  n_tty_receive_char_flagged(tty, c, flag);
}
