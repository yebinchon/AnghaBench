
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int char_map; } ;


 char TTY_NORMAL ;
 scalar_t__ likely (int) ;
 int n_tty_receive_char_fast (struct tty_struct*,unsigned char) ;
 int n_tty_receive_char_flagged (struct tty_struct*,int ,char) ;
 int n_tty_receive_char_lnext (struct tty_struct*,int ,char) ;
 scalar_t__ n_tty_receive_char_special (struct tty_struct*,unsigned char) ;
 int test_bit (unsigned char,int ) ;

__attribute__((used)) static void
n_tty_receive_buf_fast(struct tty_struct *tty, const unsigned char *cp,
         char *fp, int count)
{
 struct n_tty_data *ldata = tty->disc_data;
 char flag = TTY_NORMAL;

 while (count--) {
  if (fp)
   flag = *fp++;
  if (likely(flag == TTY_NORMAL)) {
   unsigned char c = *cp++;

   if (!test_bit(c, ldata->char_map))
    n_tty_receive_char_fast(tty, c);
   else if (n_tty_receive_char_special(tty, c) && count) {
    if (fp)
     flag = *fp++;
    n_tty_receive_char_lnext(tty, *cp++, flag);
    count--;
   }
  } else
   n_tty_receive_char_flagged(tty, *cp++, flag);
 }
}
