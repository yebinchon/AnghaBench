
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {unsigned int timeout; } ;
struct stpmic1_wdt {TYPE_1__* pmic; } ;
struct TYPE_2__ {int regmap; } ;


 int WCHDG_TIMER_CR ;
 int regmap_write (int ,int ,unsigned int) ;
 struct stpmic1_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pmic_wdt_set_timeout(struct watchdog_device *wdd,
    unsigned int timeout)
{
 struct stpmic1_wdt *wdt = watchdog_get_drvdata(wdd);

 wdd->timeout = timeout;

 return regmap_write(wdt->pmic->regmap, WCHDG_TIMER_CR, timeout - 1);
}
