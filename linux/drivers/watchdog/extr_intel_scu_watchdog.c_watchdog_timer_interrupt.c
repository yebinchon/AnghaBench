
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ timer_started; int threshold; int timer_control_addr; int timer_load_count_addr; int timer_interrupt_status_addr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int pr_debug (char*,...) ;
 TYPE_1__ watchdog_device ;

__attribute__((used)) static irqreturn_t watchdog_timer_interrupt(int irq, void *dev_id)
{
 int int_status;
 int_status = ioread32(watchdog_device.timer_interrupt_status_addr);

 pr_debug("irq, int_status: %x\n", int_status);

 if (int_status != 0)
  return IRQ_NONE;


 if (watchdog_device.timer_started == 0) {
  pr_debug("spurious interrupt received\n");
  return IRQ_HANDLED;
 }


 iowrite32(0x00000002, watchdog_device.timer_control_addr);


 iowrite32(watchdog_device.threshold,
    watchdog_device.timer_load_count_addr);


 iowrite32(0x00000003, watchdog_device.timer_control_addr);

 return IRQ_HANDLED;
}
