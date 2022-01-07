
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int rpm_complete; } ;


 int reinit_completion (int *) ;
 scalar_t__ tb_route (struct tb_switch*) ;

__attribute__((used)) static int icm_runtime_suspend_switch(struct tb_switch *sw)
{
 if (tb_route(sw))
  reinit_completion(&sw->rpm_complete);
 return 0;
}
