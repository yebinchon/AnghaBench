
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int EINVAL ;
 int HV_EINVAL ;
 int sun4v_mach_set_watchdog (int,int *) ;

__attribute__((used)) static int sun4v_wdt_ping(struct watchdog_device *wdd)
{
 int hverr;






 hverr = sun4v_mach_set_watchdog(wdd->timeout * 1000, ((void*)0));
 if (hverr == HV_EINVAL)
  return -EINVAL;

 return 0;
}
