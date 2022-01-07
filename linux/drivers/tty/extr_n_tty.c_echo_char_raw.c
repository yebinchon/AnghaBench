
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {int dummy; } ;


 unsigned char ECHO_OP_START ;
 int add_echo_byte (unsigned char,struct n_tty_data*) ;

__attribute__((used)) static void echo_char_raw(unsigned char c, struct n_tty_data *ldata)
{
 if (c == ECHO_OP_START) {
  add_echo_byte(ECHO_OP_START, ldata);
  add_echo_byte(ECHO_OP_START, ldata);
 } else {
  add_echo_byte(c, ldata);
 }
}
