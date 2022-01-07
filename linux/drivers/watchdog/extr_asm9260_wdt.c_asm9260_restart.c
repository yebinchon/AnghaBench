
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {int dummy; } ;


 int asm9260_wdt_sys_reset (struct asm9260_wdt_priv*) ;
 struct asm9260_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_restart(struct watchdog_device *wdd, unsigned long action,
      void *data)
{
 struct asm9260_wdt_priv *priv = watchdog_get_drvdata(wdd);

 asm9260_wdt_sys_reset(priv);

 return 0;
}
