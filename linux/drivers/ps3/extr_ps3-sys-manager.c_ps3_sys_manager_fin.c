
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int dummy; } ;


 int lv1_pause (int) ;
 int pr_emerg (char*) ;
 scalar_t__ ps3_sys_manager_handle_msg (struct ps3_system_bus_device*) ;
 int ps3_sys_manager_send_request_shutdown (struct ps3_system_bus_device*) ;

__attribute__((used)) static void ps3_sys_manager_fin(struct ps3_system_bus_device *dev)
{
 ps3_sys_manager_send_request_shutdown(dev);

 pr_emerg("System Halted, OK to turn off power\n");

 while (ps3_sys_manager_handle_msg(dev)) {

  lv1_pause(0);
 }

 while (1) {

  lv1_pause(1);
 }
}
