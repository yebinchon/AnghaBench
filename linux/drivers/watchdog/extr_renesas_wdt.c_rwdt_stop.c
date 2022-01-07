
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int parent; } ;
struct rwdt_priv {int cks; } ;


 int RWTCSRA ;
 int pm_runtime_put (int ) ;
 int rwdt_wait_cycles (struct rwdt_priv*,int) ;
 int rwdt_write (struct rwdt_priv*,int ,int ) ;
 struct rwdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rwdt_stop(struct watchdog_device *wdev)
{
 struct rwdt_priv *priv = watchdog_get_drvdata(wdev);

 rwdt_write(priv, priv->cks, RWTCSRA);

 rwdt_wait_cycles(priv, 3);
 pm_runtime_put(wdev->parent);

 return 0;
}
