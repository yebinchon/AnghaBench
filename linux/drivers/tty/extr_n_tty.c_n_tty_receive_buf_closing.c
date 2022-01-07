
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 char TTY_NORMAL ;
 scalar_t__ likely (int) ;
 int n_tty_receive_char_closing (struct tty_struct*,int ) ;

__attribute__((used)) static void
n_tty_receive_buf_closing(struct tty_struct *tty, const unsigned char *cp,
     char *fp, int count)
{
 char flag = TTY_NORMAL;

 while (count--) {
  if (fp)
   flag = *fp++;
  if (likely(flag == TTY_NORMAL))
   n_tty_receive_char_closing(tty, *cp++);
 }
}
