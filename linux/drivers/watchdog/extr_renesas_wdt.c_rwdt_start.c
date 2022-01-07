
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int parent; } ;
struct rwdt_priv {int cks; scalar_t__ base; } ;


 scalar_t__ RWTCSRA ;
 int RWTCSRA_TME ;
 int RWTCSRA_WRFLG ;
 scalar_t__ RWTCSRB ;
 int cpu_relax () ;
 int pm_runtime_get_sync (int ) ;
 int readb_relaxed (scalar_t__) ;
 int rwdt_init_timeout (struct watchdog_device*) ;
 int rwdt_wait_cycles (struct rwdt_priv*,int) ;
 int rwdt_write (struct rwdt_priv*,int,scalar_t__) ;
 struct rwdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rwdt_start(struct watchdog_device *wdev)
{
 struct rwdt_priv *priv = watchdog_get_drvdata(wdev);
 u8 val;

 pm_runtime_get_sync(wdev->parent);


 val = readb_relaxed(priv->base + RWTCSRA) & ~RWTCSRA_TME;
 rwdt_write(priv, val, RWTCSRA);

 rwdt_wait_cycles(priv, 2);

 rwdt_init_timeout(wdev);
 rwdt_write(priv, priv->cks, RWTCSRA);
 rwdt_write(priv, 0, RWTCSRB);

 while (readb_relaxed(priv->base + RWTCSRA) & RWTCSRA_WRFLG)
  cpu_relax();

 rwdt_write(priv, priv->cks | RWTCSRA_TME, RWTCSRA);

 return 0;
}
