
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int timer; int ticks; } ;


 scalar_t__ HZ ;
 int atomic_dec_and_test (int *) ;
 TYPE_1__ bcm63xx_wdt_device ;
 int bcm63xx_wdt_hw_start () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_crit (char*) ;

__attribute__((used)) static void bcm63xx_timer_tick(struct timer_list *unused)
{
 if (!atomic_dec_and_test(&bcm63xx_wdt_device.ticks)) {
  bcm63xx_wdt_hw_start();
  mod_timer(&bcm63xx_wdt_device.timer, jiffies + HZ);
 } else
  pr_crit("watchdog will restart system\n");
}
