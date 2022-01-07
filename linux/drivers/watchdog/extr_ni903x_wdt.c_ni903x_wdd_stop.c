
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ni903x_wdt {scalar_t__ io_base; } ;


 scalar_t__ NIWD_CONTROL ;
 int NIWD_CONTROL_RESET ;
 int outb (int ,scalar_t__) ;
 struct ni903x_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int ni903x_wdd_stop(struct watchdog_device *wdd)
{
 struct ni903x_wdt *wdt = watchdog_get_drvdata(wdd);

 outb(NIWD_CONTROL_RESET, wdt->io_base + NIWD_CONTROL);

 return 0;
}
