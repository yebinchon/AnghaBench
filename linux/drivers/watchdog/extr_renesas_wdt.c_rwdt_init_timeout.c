
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct rwdt_priv {int dummy; } ;


 scalar_t__ MUL_BY_CLKS_PER_SEC (struct rwdt_priv*,int ) ;
 int RWTCNT ;
 int rwdt_write (struct rwdt_priv*,scalar_t__,int ) ;
 struct rwdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rwdt_init_timeout(struct watchdog_device *wdev)
{
 struct rwdt_priv *priv = watchdog_get_drvdata(wdev);

 rwdt_write(priv, 65536 - MUL_BY_CLKS_PER_SEC(priv, wdev->timeout), RWTCNT);

 return 0;
}
