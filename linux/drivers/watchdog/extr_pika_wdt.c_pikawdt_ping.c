
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int timer; int open; int next_heartbeat; } ;


 scalar_t__ WDT_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int nowayout ;
 TYPE_1__ pikawdt_private ;
 int pikawdt_reset () ;
 int pr_crit (char*) ;
 scalar_t__ time_before (scalar_t__,int ) ;

__attribute__((used)) static void pikawdt_ping(struct timer_list *unused)
{
 if (time_before(jiffies, pikawdt_private.next_heartbeat) ||
   (!nowayout && !pikawdt_private.open)) {
  pikawdt_reset();
  mod_timer(&pikawdt_private.timer, jiffies + WDT_TIMEOUT);
 } else
  pr_crit("I will reset your machine !\n");
}
