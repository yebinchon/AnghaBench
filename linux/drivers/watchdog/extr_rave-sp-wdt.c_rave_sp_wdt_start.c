
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; } ;


 int WDOG_HW_RUNNING ;
 int rave_sp_wdt_configure (struct watchdog_device*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int rave_sp_wdt_start(struct watchdog_device *wdd)
{
 int ret;

 ret = rave_sp_wdt_configure(wdd, 1);
 if (!ret)
  set_bit(WDOG_HW_RUNNING, &wdd->status);

 return ret;
}
