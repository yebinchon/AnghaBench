
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int coh901327_disable () ;

__attribute__((used)) static int coh901327_stop(struct watchdog_device *wdt_dev)
{
 coh901327_disable();
 return 0;
}
