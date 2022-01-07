
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

__attribute__((used)) static void fn_inc_console(struct vc_data *vc)
{
 int i, cur = fg_console;


 if (want_console != -1)
  cur = want_console;

 for (i = cur+1; i != cur; i++) {
  if (i == MAX_NR_CONSOLES)
   i = 0;
  if (vc_cons_allocated(i))
   break;
 }
 set_console(i);
}
