
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int dummy; } ;


 unsigned char ECHO_OP_START ;
 scalar_t__ L_ECHOCTL (struct tty_struct*) ;
 int add_echo_byte (unsigned char,struct n_tty_data*) ;
 scalar_t__ iscntrl (unsigned char) ;

__attribute__((used)) static void echo_char(unsigned char c, struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 if (c == ECHO_OP_START) {
  add_echo_byte(ECHO_OP_START, ldata);
  add_echo_byte(ECHO_OP_START, ldata);
 } else {
  if (L_ECHOCTL(tty) && iscntrl(c) && c != '\t')
   add_echo_byte(ECHO_OP_START, ldata);
  add_echo_byte(c, ldata);
 }
}
