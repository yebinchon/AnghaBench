
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int dummy; } ;


 char TTY_NORMAL ;
 scalar_t__ likely (int) ;
 int n_tty_receive_char_flagged (struct tty_struct*,int ,char) ;
 int put_tty_queue (int ,struct n_tty_data*) ;

__attribute__((used)) static void
n_tty_receive_buf_raw(struct tty_struct *tty, const unsigned char *cp,
        char *fp, int count)
{
 struct n_tty_data *ldata = tty->disc_data;
 char flag = TTY_NORMAL;

 while (count--) {
  if (fp)
   flag = *fp++;
  if (likely(flag == TTY_NORMAL))
   put_tty_queue(*cp++, ldata);
  else
   n_tty_receive_char_flagged(tty, *cp++, flag);
 }
}
