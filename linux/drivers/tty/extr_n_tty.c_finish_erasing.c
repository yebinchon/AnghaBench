
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {scalar_t__ erasing; } ;


 int echo_char_raw (char,struct n_tty_data*) ;

__attribute__((used)) static inline void finish_erasing(struct n_tty_data *ldata)
{
 if (ldata->erasing) {
  echo_char_raw('/', ldata);
  ldata->erasing = 0;
 }
}
