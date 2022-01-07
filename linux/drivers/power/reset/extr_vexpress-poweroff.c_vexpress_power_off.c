
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vexpress_power_off_device ;
 int vexpress_reset_do (int ,char*) ;

__attribute__((used)) static void vexpress_power_off(void)
{
 vexpress_reset_do(vexpress_power_off_device, "power off");
}
