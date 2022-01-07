
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_control_addr; } ;


 int iowrite32 (int ,int ) ;
 TYPE_1__ watchdog_device ;

__attribute__((used)) static int intel_scu_stop(void)
{
 iowrite32(0, watchdog_device.timer_control_addr);
 return 0;
}
