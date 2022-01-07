
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {int rst; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct asm9260_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_wdt_disable(struct watchdog_device *wdd)
{
 struct asm9260_wdt_priv *priv = watchdog_get_drvdata(wdd);


 reset_control_assert(priv->rst);
 reset_control_deassert(priv->rst);

 return 0;
}
