
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pcf2127 {int regmap; } ;


 int PCF2127_REG_WD_VAL ;
 int PCF2127_WD_VAL_STOP ;
 int regmap_write (int ,int ,int ) ;
 struct pcf2127* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pcf2127_wdt_stop(struct watchdog_device *wdd)
{
 struct pcf2127 *pcf2127 = watchdog_get_drvdata(wdd);

 return regmap_write(pcf2127->regmap, PCF2127_REG_WD_VAL,
       PCF2127_WD_VAL_STOP);
}
