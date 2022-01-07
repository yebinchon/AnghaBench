
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int timer_set; scalar_t__ timer_started; } ;


 int intel_scu_keepalive () ;
 int intel_scu_set_heartbeat (int ) ;
 TYPE_1__ watchdog_device ;

__attribute__((used)) static ssize_t intel_scu_write(struct file *file,
         char const *data,
         size_t len,
         loff_t *ppos)
{

 if (watchdog_device.timer_started)

  intel_scu_keepalive();
 else

  intel_scu_set_heartbeat(watchdog_device.timer_set);

 return len;
}
