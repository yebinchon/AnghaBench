
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct rza_wdt {int count; scalar_t__ base; int cks; } ;


 scalar_t__ WRCSR ;
 int WRCSR_CLEAR_WOVF ;
 int WRCSR_MAGIC ;
 int WRCSR_RSTE ;
 scalar_t__ WTCNT ;
 int WTCNT_MAGIC ;
 scalar_t__ WTCSR ;
 int WTCSR_MAGIC ;
 int WTSCR_CKS (int ) ;
 int WTSCR_TME ;
 int WTSCR_WT ;
 int readb (scalar_t__) ;
 int rza_wdt_calc_timeout (struct rza_wdt*,int ) ;
 struct rza_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int rza_wdt_start(struct watchdog_device *wdev)
{
 struct rza_wdt *priv = watchdog_get_drvdata(wdev);


 writew(WTCSR_MAGIC | 0, priv->base + WTCSR);


 readb(priv->base + WRCSR);
 writew(WRCSR_CLEAR_WOVF, priv->base + WRCSR);

 rza_wdt_calc_timeout(priv, wdev->timeout);

 writew(WRCSR_MAGIC | WRCSR_RSTE, priv->base + WRCSR);
 writew(WTCNT_MAGIC | priv->count, priv->base + WTCNT);
 writew(WTCSR_MAGIC | WTSCR_WT | WTSCR_TME |
        WTSCR_CKS(priv->cks), priv->base + WTCSR);

 return 0;
}
