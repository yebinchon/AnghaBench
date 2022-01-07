
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int WARN_CONSOLE_UNLOCKED () ;
 scalar_t__ con_should_update (struct vc_data*) ;
 int do_update_region (struct vc_data*,unsigned long,int) ;
 int hide_cursor (struct vc_data*) ;
 int set_cursor (struct vc_data*) ;

void update_region(struct vc_data *vc, unsigned long start, int count)
{
 WARN_CONSOLE_UNLOCKED();

 if (con_should_update(vc)) {
  hide_cursor(vc);
  do_update_region(vc, start, count);
  set_cursor(vc);
 }
}
