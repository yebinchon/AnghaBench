
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int __booke_wdt_ping ;
 int on_each_cpu (int ,int *,int ) ;

__attribute__((used)) static int booke_wdt_ping(struct watchdog_device *wdog)
{
 on_each_cpu(__booke_wdt_ping, ((void*)0), 0);

 return 0;
}
