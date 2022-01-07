
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int soft_threshold; int timer_control_addr; int timer_load_count_addr; int timer_clear_interrupt_addr; } ;


 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 TYPE_1__ watchdog_device ;

__attribute__((used)) static int intel_scu_keepalive(void)
{


 ioread32(watchdog_device.timer_clear_interrupt_addr);


 iowrite32(0x00000002, watchdog_device.timer_control_addr);


 iowrite32(watchdog_device.soft_threshold,
    watchdog_device.timer_load_count_addr);


 iowrite32(0x00000003, watchdog_device.timer_control_addr);

 return 0;
}
