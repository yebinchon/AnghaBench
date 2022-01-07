
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; } ;
struct dw_wdt {int rst; } ;


 int WDOG_HW_RUNNING ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int set_bit (int ,int *) ;
 struct dw_wdt* to_dw_wdt (struct watchdog_device*) ;

__attribute__((used)) static int dw_wdt_stop(struct watchdog_device *wdd)
{
 struct dw_wdt *dw_wdt = to_dw_wdt(wdd);

 if (!dw_wdt->rst) {
  set_bit(WDOG_HW_RUNNING, &wdd->status);
  return 0;
 }

 reset_control_assert(dw_wdt->rst);
 reset_control_deassert(dw_wdt->rst);

 return 0;
}
