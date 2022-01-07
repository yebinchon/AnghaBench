
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {int dummy; } ;


 int ECHO_OP_SET_CANON_COL ;
 int ECHO_OP_START ;
 int add_echo_byte (int ,struct n_tty_data*) ;

__attribute__((used)) static void echo_set_canon_col(struct n_tty_data *ldata)
{
 add_echo_byte(ECHO_OP_START, ldata);
 add_echo_byte(ECHO_OP_SET_CANON_COL, ldata);
}
