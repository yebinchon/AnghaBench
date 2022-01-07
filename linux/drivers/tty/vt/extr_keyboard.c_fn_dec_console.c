
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MAX_NR_CONSOLES ;
 int fg_console ;
 int set_console (int) ;
 scalar_t__ vc_cons_allocated (int) ;
 int want_console ;

__attribute__((used)) static void fn_dec_console(struct vc_data *vc)
{
 int i, cur = fg_console;


 if (want_console != -1)
  cur = want_console;

 for (i = cur - 1; i != cur; i--) {
  if (i == -1)
   i = MAX_NR_CONSOLES - 1;
  if (vc_cons_allocated(i))
   break;
 }
 set_console(i);
}
