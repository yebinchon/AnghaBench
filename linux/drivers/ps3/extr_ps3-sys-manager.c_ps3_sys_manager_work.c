
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int dummy; } ;


 int PS3_SM_RX_MSG_LEN_MIN ;
 int ps3_sys_manager_handle_msg (struct ps3_system_bus_device*) ;
 int ps3_vuart_read_async (struct ps3_system_bus_device*,int ) ;

__attribute__((used)) static void ps3_sys_manager_work(struct ps3_system_bus_device *dev)
{
 ps3_sys_manager_handle_msg(dev);
 ps3_vuart_read_async(dev, PS3_SM_RX_MSG_LEN_MIN);
}
