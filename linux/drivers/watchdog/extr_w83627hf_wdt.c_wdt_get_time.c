
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int W83627HF_LD_WDT ;
 int cr_wdt_timeout ;
 int superio_enter () ;
 int superio_exit () ;
 unsigned int superio_inb (int ) ;
 int superio_select (int ) ;

__attribute__((used)) static unsigned int wdt_get_time(struct watchdog_device *wdog)
{
 unsigned int timeleft;
 int ret;

 ret = superio_enter();
 if (ret)
  return 0;

 superio_select(W83627HF_LD_WDT);
 timeleft = superio_inb(cr_wdt_timeout);
 superio_exit();

 return timeleft;
}
