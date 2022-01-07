
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {int dummy; } ;


 unsigned int ECHO_OP_ERASE_TAB ;
 unsigned int ECHO_OP_START ;
 int add_echo_byte (unsigned int,struct n_tty_data*) ;

__attribute__((used)) static void echo_erase_tab(unsigned int num_chars, int after_tab,
      struct n_tty_data *ldata)
{
 add_echo_byte(ECHO_OP_START, ldata);
 add_echo_byte(ECHO_OP_ERASE_TAB, ldata);


 num_chars &= 7;


 if (after_tab)
  num_chars |= 0x80;

 add_echo_byte(num_chars, ldata);
}
