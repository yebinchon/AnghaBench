
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int __booke_wdt_disable ;
 int on_each_cpu (int ,int *,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static int booke_wdt_stop(struct watchdog_device *wdog)
{
 on_each_cpu(__booke_wdt_disable, ((void*)0), 0);
 pr_debug("watchdog disabled\n");

 return 0;
}
