
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int hpwdt_stop () ;

__attribute__((used)) static int hpwdt_stop_core(struct watchdog_device *wdd)
{
 hpwdt_stop();

 return 0;
}
