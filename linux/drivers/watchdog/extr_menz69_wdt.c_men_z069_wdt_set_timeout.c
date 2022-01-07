
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct watchdog_device {unsigned int timeout; } ;
struct men_z069_drv {scalar_t__ base; } ;


 unsigned int MEN_Z069_TIMER_FREQ ;
 scalar_t__ MEN_Z069_WTR ;
 int MEN_Z069_WTR_WDEN ;
 scalar_t__ MEN_Z069_WVR ;
 int readw (scalar_t__) ;
 struct men_z069_drv* watchdog_get_drvdata (struct watchdog_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int men_z069_wdt_set_timeout(struct watchdog_device *wdt,
        unsigned int timeout)
{
 struct men_z069_drv *drv = watchdog_get_drvdata(wdt);
 u16 reg, val, ena;

 wdt->timeout = timeout;
 val = timeout * MEN_Z069_TIMER_FREQ;

 reg = readw(drv->base + MEN_Z069_WVR);
 ena = reg & MEN_Z069_WTR_WDEN;
 reg = ena | val;
 writew(reg, drv->base + MEN_Z069_WTR);

 return 0;
}
