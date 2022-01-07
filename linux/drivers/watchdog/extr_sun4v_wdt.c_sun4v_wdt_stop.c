
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int sun4v_mach_set_watchdog (int ,int *) ;

__attribute__((used)) static int sun4v_wdt_stop(struct watchdog_device *wdd)
{
 sun4v_mach_set_watchdog(0, ((void*)0));

 return 0;
}
