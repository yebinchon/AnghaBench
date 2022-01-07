
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int ap_scan_work ;
 scalar_t__ ap_suspend_flag ;
 int queue_work (int ,int *) ;
 int system_long_wq ;

__attribute__((used)) static void ap_config_timeout(struct timer_list *unused)
{
 if (ap_suspend_flag)
  return;
 queue_work(system_long_wq, &ap_scan_work);
}
