
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;


 scalar_t__ WDT_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pikawdt_keepalive () ;
 TYPE_1__ pikawdt_private ;

__attribute__((used)) static void pikawdt_start(void)
{
 pikawdt_keepalive();
 mod_timer(&pikawdt_private.timer, jiffies + WDT_TIMEOUT);
}
