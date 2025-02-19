
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct watchdog_device {int dummy; } ;
struct men_z069_drv {scalar_t__ base; } ;


 scalar_t__ MEN_Z069_WVR ;
 int readw (scalar_t__) ;
 struct men_z069_drv* watchdog_get_drvdata (struct watchdog_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int men_z069_wdt_ping(struct watchdog_device *wdt)
{
 struct men_z069_drv *drv = watchdog_get_drvdata(wdt);
 u16 val;


 val = readw(drv->base + MEN_Z069_WVR);
 val ^= 0xffff;
 writew(val, drv->base + MEN_Z069_WVR);

 return 0;
}
