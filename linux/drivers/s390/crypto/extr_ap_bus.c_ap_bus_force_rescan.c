
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ap_config_timer ;
 int ap_scan_work ;
 scalar_t__ ap_suspend_flag ;
 int del_timer (int *) ;
 int flush_work (int *) ;
 int queue_work (int ,int *) ;
 int system_long_wq ;

void ap_bus_force_rescan(void)
{
 if (ap_suspend_flag)
  return;

 del_timer(&ap_config_timer);
 queue_work(system_long_wq, &ap_scan_work);
 flush_work(&ap_scan_work);
}
