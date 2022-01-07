
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct ni903x_wdt {scalar_t__ io_base; } ;


 scalar_t__ NIWD_CONTROL ;
 int NIWD_CONTROL_PROC_RESET ;
 int NIWD_CONTROL_RESET ;
 int ni903x_start (struct ni903x_wdt*) ;
 int ni903x_wdd_set_timeout (struct watchdog_device*,int ) ;
 int outb (int,scalar_t__) ;
 struct ni903x_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int ni903x_wdd_start(struct watchdog_device *wdd)
{
 struct ni903x_wdt *wdt = watchdog_get_drvdata(wdd);

 outb(NIWD_CONTROL_RESET | NIWD_CONTROL_PROC_RESET,
      wdt->io_base + NIWD_CONTROL);

 ni903x_wdd_set_timeout(wdd, wdd->timeout);
 ni903x_start(wdt);

 return 0;
}
