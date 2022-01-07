
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;






 int n_tty_receive_break (struct tty_struct*) ;
 int n_tty_receive_overrun (struct tty_struct*) ;
 int n_tty_receive_parity_error (struct tty_struct*,unsigned char) ;
 int tty_err (struct tty_struct*,char*,char) ;

__attribute__((used)) static void
n_tty_receive_char_flagged(struct tty_struct *tty, unsigned char c, char flag)
{
 switch (flag) {
 case 131:
  n_tty_receive_break(tty);
  break;
 case 128:
 case 130:
  n_tty_receive_parity_error(tty, c);
  break;
 case 129:
  n_tty_receive_overrun(tty);
  break;
 default:
  tty_err(tty, "unknown flag %d\n", flag);
  break;
 }
}
