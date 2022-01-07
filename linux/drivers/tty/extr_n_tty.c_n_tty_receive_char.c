
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int n_tty_receive_char_inline (struct tty_struct*,unsigned char) ;

__attribute__((used)) static void n_tty_receive_char(struct tty_struct *tty, unsigned char c)
{
 n_tty_receive_char_inline(tty, c);
}
